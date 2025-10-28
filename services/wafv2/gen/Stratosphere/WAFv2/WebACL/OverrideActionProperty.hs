module Stratosphere.WAFv2.WebACL.OverrideActionProperty (
        OverrideActionProperty(..), mkOverrideActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data OverrideActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-overrideaction.html>
    OverrideActionProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-overrideaction.html#cfn-wafv2-webacl-overrideaction-count>
                            count :: (Prelude.Maybe JSON.Object),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-overrideaction.html#cfn-wafv2-webacl-overrideaction-none>
                            none :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOverrideActionProperty :: OverrideActionProperty
mkOverrideActionProperty
  = OverrideActionProperty
      {haddock_workaround_ = (), count = Prelude.Nothing,
       none = Prelude.Nothing}
instance ToResourceProperties OverrideActionProperty where
  toResourceProperties OverrideActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.OverrideAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Count" Prelude.<$> count,
                            (JSON..=) "None" Prelude.<$> none])}
instance JSON.ToJSON OverrideActionProperty where
  toJSON OverrideActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Count" Prelude.<$> count,
               (JSON..=) "None" Prelude.<$> none]))
instance Property "Count" OverrideActionProperty where
  type PropertyType "Count" OverrideActionProperty = JSON.Object
  set newValue OverrideActionProperty {..}
    = OverrideActionProperty {count = Prelude.pure newValue, ..}
instance Property "None" OverrideActionProperty where
  type PropertyType "None" OverrideActionProperty = JSON.Object
  set newValue OverrideActionProperty {..}
    = OverrideActionProperty {none = Prelude.pure newValue, ..}