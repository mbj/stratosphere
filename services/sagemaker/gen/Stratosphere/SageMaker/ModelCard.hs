module Stratosphere.SageMaker.ModelCard (
        module Exports, ModelCard(..), mkModelCard
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.ContentProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.SecurityConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.UserContextProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ModelCard
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelcard.html>
    ModelCard {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelcard.html#cfn-sagemaker-modelcard-content>
               content :: ContentProperty,
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelcard.html#cfn-sagemaker-modelcard-createdby>
               createdBy :: (Prelude.Maybe UserContextProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelcard.html#cfn-sagemaker-modelcard-lastmodifiedby>
               lastModifiedBy :: (Prelude.Maybe UserContextProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelcard.html#cfn-sagemaker-modelcard-modelcardname>
               modelCardName :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelcard.html#cfn-sagemaker-modelcard-modelcardstatus>
               modelCardStatus :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelcard.html#cfn-sagemaker-modelcard-securityconfig>
               securityConfig :: (Prelude.Maybe SecurityConfigProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelcard.html#cfn-sagemaker-modelcard-tags>
               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelCard ::
  ContentProperty
  -> Value Prelude.Text -> Value Prelude.Text -> ModelCard
mkModelCard content modelCardName modelCardStatus
  = ModelCard
      {haddock_workaround_ = (), content = content,
       modelCardName = modelCardName, modelCardStatus = modelCardStatus,
       createdBy = Prelude.Nothing, lastModifiedBy = Prelude.Nothing,
       securityConfig = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ModelCard where
  toResourceProperties ModelCard {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Content" JSON..= content, "ModelCardName" JSON..= modelCardName,
                            "ModelCardStatus" JSON..= modelCardStatus]
                           (Prelude.catMaybes
                              [(JSON..=) "CreatedBy" Prelude.<$> createdBy,
                               (JSON..=) "LastModifiedBy" Prelude.<$> lastModifiedBy,
                               (JSON..=) "SecurityConfig" Prelude.<$> securityConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ModelCard where
  toJSON ModelCard {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Content" JSON..= content, "ModelCardName" JSON..= modelCardName,
               "ModelCardStatus" JSON..= modelCardStatus]
              (Prelude.catMaybes
                 [(JSON..=) "CreatedBy" Prelude.<$> createdBy,
                  (JSON..=) "LastModifiedBy" Prelude.<$> lastModifiedBy,
                  (JSON..=) "SecurityConfig" Prelude.<$> securityConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Content" ModelCard where
  type PropertyType "Content" ModelCard = ContentProperty
  set newValue ModelCard {..} = ModelCard {content = newValue, ..}
instance Property "CreatedBy" ModelCard where
  type PropertyType "CreatedBy" ModelCard = UserContextProperty
  set newValue ModelCard {..}
    = ModelCard {createdBy = Prelude.pure newValue, ..}
instance Property "LastModifiedBy" ModelCard where
  type PropertyType "LastModifiedBy" ModelCard = UserContextProperty
  set newValue ModelCard {..}
    = ModelCard {lastModifiedBy = Prelude.pure newValue, ..}
instance Property "ModelCardName" ModelCard where
  type PropertyType "ModelCardName" ModelCard = Value Prelude.Text
  set newValue ModelCard {..}
    = ModelCard {modelCardName = newValue, ..}
instance Property "ModelCardStatus" ModelCard where
  type PropertyType "ModelCardStatus" ModelCard = Value Prelude.Text
  set newValue ModelCard {..}
    = ModelCard {modelCardStatus = newValue, ..}
instance Property "SecurityConfig" ModelCard where
  type PropertyType "SecurityConfig" ModelCard = SecurityConfigProperty
  set newValue ModelCard {..}
    = ModelCard {securityConfig = Prelude.pure newValue, ..}
instance Property "Tags" ModelCard where
  type PropertyType "Tags" ModelCard = [Tag]
  set newValue ModelCard {..}
    = ModelCard {tags = Prelude.pure newValue, ..}