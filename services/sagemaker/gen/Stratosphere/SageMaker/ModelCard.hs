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
  = ModelCard {content :: ContentProperty,
               createdBy :: (Prelude.Maybe UserContextProperty),
               lastModifiedBy :: (Prelude.Maybe UserContextProperty),
               modelCardName :: (Value Prelude.Text),
               modelCardStatus :: (Value Prelude.Text),
               securityConfig :: (Prelude.Maybe SecurityConfigProperty),
               tags :: (Prelude.Maybe [Tag])}
mkModelCard ::
  ContentProperty
  -> Value Prelude.Text -> Value Prelude.Text -> ModelCard
mkModelCard content modelCardName modelCardStatus
  = ModelCard
      {content = content, modelCardName = modelCardName,
       modelCardStatus = modelCardStatus, createdBy = Prelude.Nothing,
       lastModifiedBy = Prelude.Nothing, securityConfig = Prelude.Nothing,
       tags = Prelude.Nothing}
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