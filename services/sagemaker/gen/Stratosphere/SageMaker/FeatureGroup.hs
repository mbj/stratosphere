module Stratosphere.SageMaker.FeatureGroup (
        module Exports, FeatureGroup(..), mkFeatureGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.FeatureGroup.FeatureDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.FeatureGroup.OfflineStoreConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.FeatureGroup.OnlineStoreConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data FeatureGroup
  = FeatureGroup {description :: (Prelude.Maybe (Value Prelude.Text)),
                  eventTimeFeatureName :: (Value Prelude.Text),
                  featureDefinitions :: [FeatureDefinitionProperty],
                  featureGroupName :: (Value Prelude.Text),
                  offlineStoreConfig :: (Prelude.Maybe OfflineStoreConfigProperty),
                  onlineStoreConfig :: (Prelude.Maybe OnlineStoreConfigProperty),
                  recordIdentifierFeatureName :: (Value Prelude.Text),
                  roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                  tags :: (Prelude.Maybe [Tag])}
mkFeatureGroup ::
  Value Prelude.Text
  -> [FeatureDefinitionProperty]
     -> Value Prelude.Text -> Value Prelude.Text -> FeatureGroup
mkFeatureGroup
  eventTimeFeatureName
  featureDefinitions
  featureGroupName
  recordIdentifierFeatureName
  = FeatureGroup
      {eventTimeFeatureName = eventTimeFeatureName,
       featureDefinitions = featureDefinitions,
       featureGroupName = featureGroupName,
       recordIdentifierFeatureName = recordIdentifierFeatureName,
       description = Prelude.Nothing,
       offlineStoreConfig = Prelude.Nothing,
       onlineStoreConfig = Prelude.Nothing, roleArn = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties FeatureGroup where
  toResourceProperties FeatureGroup {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::FeatureGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EventTimeFeatureName" JSON..= eventTimeFeatureName,
                            "FeatureDefinitions" JSON..= featureDefinitions,
                            "FeatureGroupName" JSON..= featureGroupName,
                            "RecordIdentifierFeatureName" JSON..= recordIdentifierFeatureName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "OfflineStoreConfig" Prelude.<$> offlineStoreConfig,
                               (JSON..=) "OnlineStoreConfig" Prelude.<$> onlineStoreConfig,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON FeatureGroup where
  toJSON FeatureGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EventTimeFeatureName" JSON..= eventTimeFeatureName,
               "FeatureDefinitions" JSON..= featureDefinitions,
               "FeatureGroupName" JSON..= featureGroupName,
               "RecordIdentifierFeatureName" JSON..= recordIdentifierFeatureName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "OfflineStoreConfig" Prelude.<$> offlineStoreConfig,
                  (JSON..=) "OnlineStoreConfig" Prelude.<$> onlineStoreConfig,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" FeatureGroup where
  type PropertyType "Description" FeatureGroup = Value Prelude.Text
  set newValue FeatureGroup {..}
    = FeatureGroup {description = Prelude.pure newValue, ..}
instance Property "EventTimeFeatureName" FeatureGroup where
  type PropertyType "EventTimeFeatureName" FeatureGroup = Value Prelude.Text
  set newValue FeatureGroup {..}
    = FeatureGroup {eventTimeFeatureName = newValue, ..}
instance Property "FeatureDefinitions" FeatureGroup where
  type PropertyType "FeatureDefinitions" FeatureGroup = [FeatureDefinitionProperty]
  set newValue FeatureGroup {..}
    = FeatureGroup {featureDefinitions = newValue, ..}
instance Property "FeatureGroupName" FeatureGroup where
  type PropertyType "FeatureGroupName" FeatureGroup = Value Prelude.Text
  set newValue FeatureGroup {..}
    = FeatureGroup {featureGroupName = newValue, ..}
instance Property "OfflineStoreConfig" FeatureGroup where
  type PropertyType "OfflineStoreConfig" FeatureGroup = OfflineStoreConfigProperty
  set newValue FeatureGroup {..}
    = FeatureGroup {offlineStoreConfig = Prelude.pure newValue, ..}
instance Property "OnlineStoreConfig" FeatureGroup where
  type PropertyType "OnlineStoreConfig" FeatureGroup = OnlineStoreConfigProperty
  set newValue FeatureGroup {..}
    = FeatureGroup {onlineStoreConfig = Prelude.pure newValue, ..}
instance Property "RecordIdentifierFeatureName" FeatureGroup where
  type PropertyType "RecordIdentifierFeatureName" FeatureGroup = Value Prelude.Text
  set newValue FeatureGroup {..}
    = FeatureGroup {recordIdentifierFeatureName = newValue, ..}
instance Property "RoleArn" FeatureGroup where
  type PropertyType "RoleArn" FeatureGroup = Value Prelude.Text
  set newValue FeatureGroup {..}
    = FeatureGroup {roleArn = Prelude.pure newValue, ..}
instance Property "Tags" FeatureGroup where
  type PropertyType "Tags" FeatureGroup = [Tag]
  set newValue FeatureGroup {..}
    = FeatureGroup {tags = Prelude.pure newValue, ..}