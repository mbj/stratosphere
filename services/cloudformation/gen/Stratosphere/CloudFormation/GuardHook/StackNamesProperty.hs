module Stratosphere.CloudFormation.GuardHook.StackNamesProperty (
        StackNamesProperty(..), mkStackNamesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StackNamesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-guardhook-stacknames.html>
    StackNamesProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-guardhook-stacknames.html#cfn-cloudformation-guardhook-stacknames-exclude>
                        exclude :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-guardhook-stacknames.html#cfn-cloudformation-guardhook-stacknames-include>
                        include :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStackNamesProperty :: StackNamesProperty
mkStackNamesProperty
  = StackNamesProperty
      {haddock_workaround_ = (), exclude = Prelude.Nothing,
       include = Prelude.Nothing}
instance ToResourceProperties StackNamesProperty where
  toResourceProperties StackNamesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::GuardHook.StackNames",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exclude" Prelude.<$> exclude,
                            (JSON..=) "Include" Prelude.<$> include])}
instance JSON.ToJSON StackNamesProperty where
  toJSON StackNamesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exclude" Prelude.<$> exclude,
               (JSON..=) "Include" Prelude.<$> include]))
instance Property "Exclude" StackNamesProperty where
  type PropertyType "Exclude" StackNamesProperty = ValueList Prelude.Text
  set newValue StackNamesProperty {..}
    = StackNamesProperty {exclude = Prelude.pure newValue, ..}
instance Property "Include" StackNamesProperty where
  type PropertyType "Include" StackNamesProperty = ValueList Prelude.Text
  set newValue StackNamesProperty {..}
    = StackNamesProperty {include = Prelude.pure newValue, ..}