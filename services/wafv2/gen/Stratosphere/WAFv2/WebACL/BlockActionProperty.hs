module Stratosphere.WAFv2.WebACL.BlockActionProperty (
        module Exports, BlockActionProperty(..), mkBlockActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.CustomResponseProperty as Exports
import Stratosphere.ResourceProperties
data BlockActionProperty
  = BlockActionProperty {customResponse :: (Prelude.Maybe CustomResponseProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBlockActionProperty :: BlockActionProperty
mkBlockActionProperty
  = BlockActionProperty {customResponse = Prelude.Nothing}
instance ToResourceProperties BlockActionProperty where
  toResourceProperties BlockActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.BlockAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomResponse" Prelude.<$> customResponse])}
instance JSON.ToJSON BlockActionProperty where
  toJSON BlockActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomResponse" Prelude.<$> customResponse]))
instance Property "CustomResponse" BlockActionProperty where
  type PropertyType "CustomResponse" BlockActionProperty = CustomResponseProperty
  set newValue BlockActionProperty {}
    = BlockActionProperty {customResponse = Prelude.pure newValue, ..}