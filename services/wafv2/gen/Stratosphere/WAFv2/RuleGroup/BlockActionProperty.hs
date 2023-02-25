module Stratosphere.WAFv2.RuleGroup.BlockActionProperty (
        module Exports, BlockActionProperty(..), mkBlockActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.CustomResponseProperty as Exports
import Stratosphere.ResourceProperties
data BlockActionProperty
  = BlockActionProperty {customResponse :: (Prelude.Maybe CustomResponseProperty)}
mkBlockActionProperty :: BlockActionProperty
mkBlockActionProperty
  = BlockActionProperty {customResponse = Prelude.Nothing}
instance ToResourceProperties BlockActionProperty where
  toResourceProperties BlockActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.BlockAction",
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