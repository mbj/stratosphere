module Stratosphere.IoT.MitigationAction.ReplaceDefaultPolicyVersionParamsProperty (
        ReplaceDefaultPolicyVersionParamsProperty(..),
        mkReplaceDefaultPolicyVersionParamsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplaceDefaultPolicyVersionParamsProperty
  = ReplaceDefaultPolicyVersionParamsProperty {templateName :: (Value Prelude.Text)}
mkReplaceDefaultPolicyVersionParamsProperty ::
  Value Prelude.Text -> ReplaceDefaultPolicyVersionParamsProperty
mkReplaceDefaultPolicyVersionParamsProperty templateName
  = ReplaceDefaultPolicyVersionParamsProperty
      {templateName = templateName}
instance ToResourceProperties ReplaceDefaultPolicyVersionParamsProperty where
  toResourceProperties ReplaceDefaultPolicyVersionParamsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::MitigationAction.ReplaceDefaultPolicyVersionParams",
         supportsTags = Prelude.False,
         properties = ["TemplateName" JSON..= templateName]}
instance JSON.ToJSON ReplaceDefaultPolicyVersionParamsProperty where
  toJSON ReplaceDefaultPolicyVersionParamsProperty {..}
    = JSON.object ["TemplateName" JSON..= templateName]
instance Property "TemplateName" ReplaceDefaultPolicyVersionParamsProperty where
  type PropertyType "TemplateName" ReplaceDefaultPolicyVersionParamsProperty = Value Prelude.Text
  set newValue ReplaceDefaultPolicyVersionParamsProperty {}
    = ReplaceDefaultPolicyVersionParamsProperty
        {templateName = newValue, ..}