module Stratosphere.WAFv2.WebACL.RequestBodyAssociatedResourceTypeConfigProperty (
        RequestBodyAssociatedResourceTypeConfigProperty(..),
        mkRequestBodyAssociatedResourceTypeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RequestBodyAssociatedResourceTypeConfigProperty
  = RequestBodyAssociatedResourceTypeConfigProperty {defaultSizeInspectionLimit :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRequestBodyAssociatedResourceTypeConfigProperty ::
  Value Prelude.Text
  -> RequestBodyAssociatedResourceTypeConfigProperty
mkRequestBodyAssociatedResourceTypeConfigProperty
  defaultSizeInspectionLimit
  = RequestBodyAssociatedResourceTypeConfigProperty
      {defaultSizeInspectionLimit = defaultSizeInspectionLimit}
instance ToResourceProperties RequestBodyAssociatedResourceTypeConfigProperty where
  toResourceProperties
    RequestBodyAssociatedResourceTypeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RequestBodyAssociatedResourceTypeConfig",
         supportsTags = Prelude.False,
         properties = ["DefaultSizeInspectionLimit"
                         JSON..= defaultSizeInspectionLimit]}
instance JSON.ToJSON RequestBodyAssociatedResourceTypeConfigProperty where
  toJSON RequestBodyAssociatedResourceTypeConfigProperty {..}
    = JSON.object
        ["DefaultSizeInspectionLimit" JSON..= defaultSizeInspectionLimit]
instance Property "DefaultSizeInspectionLimit" RequestBodyAssociatedResourceTypeConfigProperty where
  type PropertyType "DefaultSizeInspectionLimit" RequestBodyAssociatedResourceTypeConfigProperty = Value Prelude.Text
  set newValue RequestBodyAssociatedResourceTypeConfigProperty {}
    = RequestBodyAssociatedResourceTypeConfigProperty
        {defaultSizeInspectionLimit = newValue, ..}