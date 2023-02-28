module Stratosphere.WAFv2.WebACL.DefaultActionProperty (
        module Exports, DefaultActionProperty(..), mkDefaultActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.AllowActionProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.BlockActionProperty as Exports
import Stratosphere.ResourceProperties
data DefaultActionProperty
  = DefaultActionProperty {allow :: (Prelude.Maybe AllowActionProperty),
                           block :: (Prelude.Maybe BlockActionProperty)}
mkDefaultActionProperty :: DefaultActionProperty
mkDefaultActionProperty
  = DefaultActionProperty
      {allow = Prelude.Nothing, block = Prelude.Nothing}
instance ToResourceProperties DefaultActionProperty where
  toResourceProperties DefaultActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.DefaultAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Allow" Prelude.<$> allow,
                            (JSON..=) "Block" Prelude.<$> block])}
instance JSON.ToJSON DefaultActionProperty where
  toJSON DefaultActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Allow" Prelude.<$> allow,
               (JSON..=) "Block" Prelude.<$> block]))
instance Property "Allow" DefaultActionProperty where
  type PropertyType "Allow" DefaultActionProperty = AllowActionProperty
  set newValue DefaultActionProperty {..}
    = DefaultActionProperty {allow = Prelude.pure newValue, ..}
instance Property "Block" DefaultActionProperty where
  type PropertyType "Block" DefaultActionProperty = BlockActionProperty
  set newValue DefaultActionProperty {..}
    = DefaultActionProperty {block = Prelude.pure newValue, ..}