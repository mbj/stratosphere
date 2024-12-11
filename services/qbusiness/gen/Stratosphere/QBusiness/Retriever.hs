module Stratosphere.QBusiness.Retriever (
        module Exports, Retriever(..), mkRetriever
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.Retriever.RetrieverConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Retriever
  = Retriever {applicationId :: (Value Prelude.Text),
               configuration :: RetrieverConfigurationProperty,
               displayName :: (Value Prelude.Text),
               roleArn :: (Prelude.Maybe (Value Prelude.Text)),
               tags :: (Prelude.Maybe [Tag]),
               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetriever ::
  Value Prelude.Text
  -> RetrieverConfigurationProperty
     -> Value Prelude.Text -> Value Prelude.Text -> Retriever
mkRetriever applicationId configuration displayName type'
  = Retriever
      {applicationId = applicationId, configuration = configuration,
       displayName = displayName, type' = type',
       roleArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Retriever where
  toResourceProperties Retriever {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Retriever",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId,
                            "Configuration" JSON..= configuration,
                            "DisplayName" JSON..= displayName, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Retriever where
  toJSON Retriever {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId,
               "Configuration" JSON..= configuration,
               "DisplayName" JSON..= displayName, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationId" Retriever where
  type PropertyType "ApplicationId" Retriever = Value Prelude.Text
  set newValue Retriever {..}
    = Retriever {applicationId = newValue, ..}
instance Property "Configuration" Retriever where
  type PropertyType "Configuration" Retriever = RetrieverConfigurationProperty
  set newValue Retriever {..}
    = Retriever {configuration = newValue, ..}
instance Property "DisplayName" Retriever where
  type PropertyType "DisplayName" Retriever = Value Prelude.Text
  set newValue Retriever {..}
    = Retriever {displayName = newValue, ..}
instance Property "RoleArn" Retriever where
  type PropertyType "RoleArn" Retriever = Value Prelude.Text
  set newValue Retriever {..}
    = Retriever {roleArn = Prelude.pure newValue, ..}
instance Property "Tags" Retriever where
  type PropertyType "Tags" Retriever = [Tag]
  set newValue Retriever {..}
    = Retriever {tags = Prelude.pure newValue, ..}
instance Property "Type" Retriever where
  type PropertyType "Type" Retriever = Value Prelude.Text
  set newValue Retriever {..} = Retriever {type' = newValue, ..}