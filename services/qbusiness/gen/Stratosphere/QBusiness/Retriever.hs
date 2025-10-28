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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-retriever.html>
    Retriever {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-retriever.html#cfn-qbusiness-retriever-applicationid>
               applicationId :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-retriever.html#cfn-qbusiness-retriever-configuration>
               configuration :: RetrieverConfigurationProperty,
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-retriever.html#cfn-qbusiness-retriever-displayname>
               displayName :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-retriever.html#cfn-qbusiness-retriever-rolearn>
               roleArn :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-retriever.html#cfn-qbusiness-retriever-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-retriever.html#cfn-qbusiness-retriever-type>
               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetriever ::
  Value Prelude.Text
  -> RetrieverConfigurationProperty
     -> Value Prelude.Text -> Value Prelude.Text -> Retriever
mkRetriever applicationId configuration displayName type'
  = Retriever
      {haddock_workaround_ = (), applicationId = applicationId,
       configuration = configuration, displayName = displayName,
       type' = type', roleArn = Prelude.Nothing, tags = Prelude.Nothing}
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