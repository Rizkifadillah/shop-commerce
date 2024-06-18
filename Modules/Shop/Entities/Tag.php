<?php

namespace Modules\Shop\Entities;

use App\Traits\UuidTrait;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Tag extends Model
{
    use HasFactory, UuidTrait;

    protected $table = 'shop_tags';

    protected $fillable = [
        'slug',
        'name',
    ];
    
    protected static function newFactory()
    {
        return \Modules\Shop\Database\factories\TagFactory::new();
    }

    public function products()
    {
        return $this->belongsToMany('Modules\Shop\Entities\Product', 'shop_products_tags', 'tag_id', 'product_id');
    }
}
