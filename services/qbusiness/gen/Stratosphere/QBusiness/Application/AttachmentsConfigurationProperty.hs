module Stratosphere.QBusiness.Application.AttachmentsConfigurationProperty (
        AttachmentsConfigurationProperty(..),
        mkAttachmentsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttachmentsConfigurationProperty
  = AttachmentsConfigurationProperty {attachmentsControlMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttachmentsConfigurationProperty ::
  Value Prelude.Text -> AttachmentsConfigurationProperty
mkAttachmentsConfigurationProperty attachmentsControlMode
  = AttachmentsConfigurationProperty
      {attachmentsControlMode = attachmentsControlMode}
instance ToResourceProperties AttachmentsConfigurationProperty where
  toResourceProperties AttachmentsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Application.AttachmentsConfiguration",
         supportsTags = Prelude.False,
         properties = ["AttachmentsControlMode"
                         JSON..= attachmentsControlMode]}
instance JSON.ToJSON AttachmentsConfigurationProperty where
  toJSON AttachmentsConfigurationProperty {..}
    = JSON.object
        ["AttachmentsControlMode" JSON..= attachmentsControlMode]
instance Property "AttachmentsControlMode" AttachmentsConfigurationProperty where
  type PropertyType "AttachmentsControlMode" AttachmentsConfigurationProperty = Value Prelude.Text
  set newValue AttachmentsConfigurationProperty {}
    = AttachmentsConfigurationProperty
        {attachmentsControlMode = newValue, ..}