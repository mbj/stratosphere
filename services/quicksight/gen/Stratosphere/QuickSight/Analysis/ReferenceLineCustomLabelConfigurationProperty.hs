module Stratosphere.QuickSight.Analysis.ReferenceLineCustomLabelConfigurationProperty (
        ReferenceLineCustomLabelConfigurationProperty(..),
        mkReferenceLineCustomLabelConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceLineCustomLabelConfigurationProperty
  = ReferenceLineCustomLabelConfigurationProperty {customLabel :: (Value Prelude.Text)}
mkReferenceLineCustomLabelConfigurationProperty ::
  Value Prelude.Text -> ReferenceLineCustomLabelConfigurationProperty
mkReferenceLineCustomLabelConfigurationProperty customLabel
  = ReferenceLineCustomLabelConfigurationProperty
      {customLabel = customLabel}
instance ToResourceProperties ReferenceLineCustomLabelConfigurationProperty where
  toResourceProperties
    ReferenceLineCustomLabelConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ReferenceLineCustomLabelConfiguration",
         supportsTags = Prelude.False,
         properties = ["CustomLabel" JSON..= customLabel]}
instance JSON.ToJSON ReferenceLineCustomLabelConfigurationProperty where
  toJSON ReferenceLineCustomLabelConfigurationProperty {..}
    = JSON.object ["CustomLabel" JSON..= customLabel]
instance Property "CustomLabel" ReferenceLineCustomLabelConfigurationProperty where
  type PropertyType "CustomLabel" ReferenceLineCustomLabelConfigurationProperty = Value Prelude.Text
  set newValue ReferenceLineCustomLabelConfigurationProperty {}
    = ReferenceLineCustomLabelConfigurationProperty
        {customLabel = newValue, ..}