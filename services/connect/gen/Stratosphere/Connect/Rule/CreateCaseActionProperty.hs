module Stratosphere.Connect.Rule.CreateCaseActionProperty (
        module Exports, CreateCaseActionProperty(..),
        mkCreateCaseActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.Rule.FieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreateCaseActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-createcaseaction.html>
    CreateCaseActionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-createcaseaction.html#cfn-connect-rule-createcaseaction-fields>
                              fields :: [FieldProperty],
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-createcaseaction.html#cfn-connect-rule-createcaseaction-templateid>
                              templateId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreateCaseActionProperty ::
  [FieldProperty] -> Value Prelude.Text -> CreateCaseActionProperty
mkCreateCaseActionProperty fields templateId
  = CreateCaseActionProperty
      {haddock_workaround_ = (), fields = fields,
       templateId = templateId}
instance ToResourceProperties CreateCaseActionProperty where
  toResourceProperties CreateCaseActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.CreateCaseAction",
         supportsTags = Prelude.False,
         properties = ["Fields" JSON..= fields,
                       "TemplateId" JSON..= templateId]}
instance JSON.ToJSON CreateCaseActionProperty where
  toJSON CreateCaseActionProperty {..}
    = JSON.object
        ["Fields" JSON..= fields, "TemplateId" JSON..= templateId]
instance Property "Fields" CreateCaseActionProperty where
  type PropertyType "Fields" CreateCaseActionProperty = [FieldProperty]
  set newValue CreateCaseActionProperty {..}
    = CreateCaseActionProperty {fields = newValue, ..}
instance Property "TemplateId" CreateCaseActionProperty where
  type PropertyType "TemplateId" CreateCaseActionProperty = Value Prelude.Text
  set newValue CreateCaseActionProperty {..}
    = CreateCaseActionProperty {templateId = newValue, ..}