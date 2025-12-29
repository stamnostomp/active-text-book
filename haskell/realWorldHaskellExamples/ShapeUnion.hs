-- | ShapeUnion.hs page 47 real world haskell

module ShapeUnion where

type Vector = (Double,Double)


data Shape = Circle Vector Double
           | Poly [Vector]


-- C version

{-
enum shape_type {
        shape_circle,
        shape_poly,
};

struct circle {
        struct vector center;
        float radius;
};

struct poly {
        size_t num_vertices;
        struct vector *vertices;
}

enum shape_type type;
union {
struct circle circle;
struct poly poly;
} shape;
};
-}
