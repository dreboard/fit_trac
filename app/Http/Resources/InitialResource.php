<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class InitialResource extends JsonResource
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
            'neck' => $this->neck,
            'shoulder' => $this->shoulder,
            'chest' => $this->chest,
            'waist' => $this->waist,
            'hips' => $this->hips,
            'left_wrist' => $this->left_wrist,
            'right_wrist' => $this->right_wrist,
            'left_bicep' => $this->left_bicep,
            'right_bicep' => $this->right_bicep,
            'left_thigh' => $this->left_thigh,
            'right_thigh' => $this->right_thigh,
            'left_calf' => $this->left_calf,
            'right_calf' => $this->right_calf,
        ];
    }
}
