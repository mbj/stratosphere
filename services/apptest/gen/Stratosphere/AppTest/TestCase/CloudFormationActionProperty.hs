module Stratosphere.AppTest.TestCase.CloudFormationActionProperty (
        CloudFormationActionProperty(..), mkCloudFormationActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudFormationActionProperty
  = CloudFormationActionProperty {actionType :: (Prelude.Maybe (Value Prelude.Text)),
                                  resource :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudFormationActionProperty ::
  Value Prelude.Text -> CloudFormationActionProperty
mkCloudFormationActionProperty resource
  = CloudFormationActionProperty
      {resource = resource, actionType = Prelude.Nothing}
instance ToResourceProperties CloudFormationActionProperty where
  toResourceProperties CloudFormationActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.CloudFormationAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Resource" JSON..= resource]
                           (Prelude.catMaybes
                              [(JSON..=) "ActionType" Prelude.<$> actionType]))}
instance JSON.ToJSON CloudFormationActionProperty where
  toJSON CloudFormationActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Resource" JSON..= resource]
              (Prelude.catMaybes
                 [(JSON..=) "ActionType" Prelude.<$> actionType])))
instance Property "ActionType" CloudFormationActionProperty where
  type PropertyType "ActionType" CloudFormationActionProperty = Value Prelude.Text
  set newValue CloudFormationActionProperty {..}
    = CloudFormationActionProperty
        {actionType = Prelude.pure newValue, ..}
instance Property "Resource" CloudFormationActionProperty where
  type PropertyType "Resource" CloudFormationActionProperty = Value Prelude.Text
  set newValue CloudFormationActionProperty {..}
    = CloudFormationActionProperty {resource = newValue, ..}