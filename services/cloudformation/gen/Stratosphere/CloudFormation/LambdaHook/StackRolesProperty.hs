module Stratosphere.CloudFormation.LambdaHook.StackRolesProperty (
        StackRolesProperty(..), mkStackRolesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StackRolesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-stackroles.html>
    StackRolesProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-stackroles.html#cfn-cloudformation-lambdahook-stackroles-exclude>
                        exclude :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-stackroles.html#cfn-cloudformation-lambdahook-stackroles-include>
                        include :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStackRolesProperty :: StackRolesProperty
mkStackRolesProperty
  = StackRolesProperty
      {haddock_workaround_ = (), exclude = Prelude.Nothing,
       include = Prelude.Nothing}
instance ToResourceProperties StackRolesProperty where
  toResourceProperties StackRolesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::LambdaHook.StackRoles",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exclude" Prelude.<$> exclude,
                            (JSON..=) "Include" Prelude.<$> include])}
instance JSON.ToJSON StackRolesProperty where
  toJSON StackRolesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exclude" Prelude.<$> exclude,
               (JSON..=) "Include" Prelude.<$> include]))
instance Property "Exclude" StackRolesProperty where
  type PropertyType "Exclude" StackRolesProperty = ValueList Prelude.Text
  set newValue StackRolesProperty {..}
    = StackRolesProperty {exclude = Prelude.pure newValue, ..}
instance Property "Include" StackRolesProperty where
  type PropertyType "Include" StackRolesProperty = ValueList Prelude.Text
  set newValue StackRolesProperty {..}
    = StackRolesProperty {include = Prelude.pure newValue, ..}