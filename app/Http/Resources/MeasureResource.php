<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class MeasureResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'measurement' => $this->measurement,
            'user_id' => $this->user_id,
            'enterDate' => $this->enterDate,
            'part' => $this->part,
        ];
    }
}
