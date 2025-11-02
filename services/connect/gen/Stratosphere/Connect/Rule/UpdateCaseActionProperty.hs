module Stratosphere.Connect.Rule.UpdateCaseActionProperty (
        module Exports, UpdateCaseActionProperty(..),
        mkUpdateCaseActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.Rule.FieldProperty as Exports
import Stratosphere.ResourceProperties
data UpdateCaseActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-updatecaseaction.html>
    UpdateCaseActionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-updatecaseaction.html#cfn-connect-rule-updatecaseaction-fields>
                              fields :: [FieldProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUpdateCaseActionProperty ::
  [FieldProperty] -> UpdateCaseActionProperty
mkUpdateCaseActionProperty fields
  = UpdateCaseActionProperty
      {haddock_workaround_ = (), fields = fields}
instance ToResourceProperties UpdateCaseActionProperty where
  toResourceProperties UpdateCaseActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.UpdateCaseAction",
         supportsTags = Prelude.False,
         properties = ["Fields" JSON..= fields]}
instance JSON.ToJSON UpdateCaseActionProperty where
  toJSON UpdateCaseActionProperty {..}
    = JSON.object ["Fields" JSON..= fields]
instance Property "Fields" UpdateCaseActionProperty where
  type PropertyType "Fields" UpdateCaseActionProperty = [FieldProperty]
  set newValue UpdateCaseActionProperty {..}
    = UpdateCaseActionProperty {fields = newValue, ..}