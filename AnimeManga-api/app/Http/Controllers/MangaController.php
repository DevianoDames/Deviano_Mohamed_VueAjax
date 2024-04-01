<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Manga;


class MangaController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

     public function getAll() {
         //$Manga = Manga::all();

         $mangas = Manga::join('mangakas', 'mangaka_id', '=', 'mangakas.id')->select('mangas.id','title','manga_image','published_date','summary','name')->orderBy('published_date', 'desc')->get();


         return response()->json($mangas);
     }

     public function getOne($id) {
        $manga = Manga::join('mangakas', 'mangaka_id', '=', 'mangakas.id')->select('mangas.id','title','manga_image','published_date','summary','name')->where('mangas.id', '=', $id)->get();

         return response()->json($manga);
     }

     public function save(Request $request) {
        $this->validate($request, [
            'title' => 'required',
            'mangaka_id' => 'required',
            'published_date' => 'required|date',
            'manga_image' => 'required'
        ]);
        $manga = Manga::create($request->all());
        return response()->json($manga, 201);
    }
    
    
    
    public function update(Request $request, $id) {
        $manga = Manga::findOrFail($id);
    
        $this->validate($request, [
            'title' => 'required',
            'mangaka_id' => 'required',
            'published_date' => 'required|date',
            'manga_image' => 'required'
        ]);
        $manga->update($request->all());
        return response()->json($manga);
    }
    
    
    public function delete($id) {
        $manga = Manga::findOrFail($id);
        $manga->delete();
        return response()->json(null, 204);
    }
    
    

}
