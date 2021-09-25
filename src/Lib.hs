module Lib (exports) where

import Glue.Requirements
import Glue.Support

import Godot

exports :: GdnativeHandle -> IO ()
exports desc = pure ()
--   registerClass $ RegClass desc $ classInit @ECSHandler
--   registerClass $ RegClass desc $ classInit @EconActor
--   registerClass $ RegClass desc $ classInit @EconGood
--   registerClass $ RegClass desc $ classInit @EconNode
--   registerClass $ RegClass desc $ classInit @EconNodes
--   registerClass $ RegClass desc $ classInit @Fonts
--   registerClass $ RegClass desc $ classInit @Geography
