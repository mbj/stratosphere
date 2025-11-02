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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html>
    DefaultActionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html#cfn-wafv2-webacl-defaultaction-allow>
                           allow :: (Prelude.Maybe AllowActionProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html#cfn-wafv2-webacl-defaultaction-block>
                           block :: (Prelude.Maybe BlockActionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultActionProperty :: DefaultActionProperty
mkDefaultActionProperty
  = DefaultActionProperty
      {haddock_workaround_ = (), allow = Prelude.Nothing,
       block = Prelude.Nothing}
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