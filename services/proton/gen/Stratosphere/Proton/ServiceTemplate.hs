module Stratosphere.Proton.ServiceTemplate (
        ServiceTemplate(..), mkServiceTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ServiceTemplate
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-proton-servicetemplate.html>
    ServiceTemplate {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-proton-servicetemplate.html#cfn-proton-servicetemplate-description>
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-proton-servicetemplate.html#cfn-proton-servicetemplate-displayname>
                     displayName :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-proton-servicetemplate.html#cfn-proton-servicetemplate-encryptionkey>
                     encryptionKey :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-proton-servicetemplate.html#cfn-proton-servicetemplate-name>
                     name :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-proton-servicetemplate.html#cfn-proton-servicetemplate-pipelineprovisioning>
                     pipelineProvisioning :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-proton-servicetemplate.html#cfn-proton-servicetemplate-tags>
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceTemplate :: ServiceTemplate
mkServiceTemplate
  = ServiceTemplate
      {haddock_workaround_ = (), description = Prelude.Nothing,
       displayName = Prelude.Nothing, encryptionKey = Prelude.Nothing,
       name = Prelude.Nothing, pipelineProvisioning = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ServiceTemplate where
  toResourceProperties ServiceTemplate {..}
    = ResourceProperties
        {awsType = "AWS::Proton::ServiceTemplate",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DisplayName" Prelude.<$> displayName,
                            (JSON..=) "EncryptionKey" Prelude.<$> encryptionKey,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "PipelineProvisioning" Prelude.<$> pipelineProvisioning,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ServiceTemplate where
  toJSON ServiceTemplate {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DisplayName" Prelude.<$> displayName,
               (JSON..=) "EncryptionKey" Prelude.<$> encryptionKey,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "PipelineProvisioning" Prelude.<$> pipelineProvisioning,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Description" ServiceTemplate where
  type PropertyType "Description" ServiceTemplate = Value Prelude.Text
  set newValue ServiceTemplate {..}
    = ServiceTemplate {description = Prelude.pure newValue, ..}
instance Property "DisplayName" ServiceTemplate where
  type PropertyType "DisplayName" ServiceTemplate = Value Prelude.Text
  set newValue ServiceTemplate {..}
    = ServiceTemplate {displayName = Prelude.pure newValue, ..}
instance Property "EncryptionKey" ServiceTemplate where
  type PropertyType "EncryptionKey" ServiceTemplate = Value Prelude.Text
  set newValue ServiceTemplate {..}
    = ServiceTemplate {encryptionKey = Prelude.pure newValue, ..}
instance Property "Name" ServiceTemplate where
  type PropertyType "Name" ServiceTemplate = Value Prelude.Text
  set newValue ServiceTemplate {..}
    = ServiceTemplate {name = Prelude.pure newValue, ..}
instance Property "PipelineProvisioning" ServiceTemplate where
  type PropertyType "PipelineProvisioning" ServiceTemplate = Value Prelude.Text
  set newValue ServiceTemplate {..}
    = ServiceTemplate
        {pipelineProvisioning = Prelude.pure newValue, ..}
instance Property "Tags" ServiceTemplate where
  type PropertyType "Tags" ServiceTemplate = [Tag]
  set newValue ServiceTemplate {..}
    = ServiceTemplate {tags = Prelude.pure newValue, ..}