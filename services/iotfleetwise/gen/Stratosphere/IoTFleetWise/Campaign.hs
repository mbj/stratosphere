module Stratosphere.IoTFleetWise.Campaign (
        module Exports, Campaign(..), mkCampaign
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.CollectionSchemeProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.DataDestinationConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.DataPartitionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.SignalFetchInformationProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.SignalInformationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Campaign
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html>
    Campaign {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-action>
              action :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-collectionscheme>
              collectionScheme :: CollectionSchemeProperty,
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-compression>
              compression :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-datadestinationconfigs>
              dataDestinationConfigs :: (Prelude.Maybe [DataDestinationConfigProperty]),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-dataextradimensions>
              dataExtraDimensions :: (Prelude.Maybe (ValueList Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-datapartitions>
              dataPartitions :: (Prelude.Maybe [DataPartitionProperty]),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-description>
              description :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-diagnosticsmode>
              diagnosticsMode :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-expirytime>
              expiryTime :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-name>
              name :: (Value Prelude.Text),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-posttriggercollectionduration>
              postTriggerCollectionDuration :: (Prelude.Maybe (Value Prelude.Double)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-priority>
              priority :: (Prelude.Maybe (Value Prelude.Integer)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-signalcatalogarn>
              signalCatalogArn :: (Value Prelude.Text),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-signalstocollect>
              signalsToCollect :: (Prelude.Maybe [SignalInformationProperty]),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-signalstofetch>
              signalsToFetch :: (Prelude.Maybe [SignalFetchInformationProperty]),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-spoolingmode>
              spoolingMode :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-starttime>
              startTime :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-tags>
              tags :: (Prelude.Maybe [Tag]),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-campaign.html#cfn-iotfleetwise-campaign-targetarn>
              targetArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCampaign ::
  CollectionSchemeProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Campaign
mkCampaign collectionScheme name signalCatalogArn targetArn
  = Campaign
      {collectionScheme = collectionScheme, name = name,
       signalCatalogArn = signalCatalogArn, targetArn = targetArn,
       action = Prelude.Nothing, compression = Prelude.Nothing,
       dataDestinationConfigs = Prelude.Nothing,
       dataExtraDimensions = Prelude.Nothing,
       dataPartitions = Prelude.Nothing, description = Prelude.Nothing,
       diagnosticsMode = Prelude.Nothing, expiryTime = Prelude.Nothing,
       postTriggerCollectionDuration = Prelude.Nothing,
       priority = Prelude.Nothing, signalsToCollect = Prelude.Nothing,
       signalsToFetch = Prelude.Nothing, spoolingMode = Prelude.Nothing,
       startTime = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Campaign where
  toResourceProperties Campaign {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CollectionScheme" JSON..= collectionScheme, "Name" JSON..= name,
                            "SignalCatalogArn" JSON..= signalCatalogArn,
                            "TargetArn" JSON..= targetArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Action" Prelude.<$> action,
                               (JSON..=) "Compression" Prelude.<$> compression,
                               (JSON..=) "DataDestinationConfigs"
                                 Prelude.<$> dataDestinationConfigs,
                               (JSON..=) "DataExtraDimensions" Prelude.<$> dataExtraDimensions,
                               (JSON..=) "DataPartitions" Prelude.<$> dataPartitions,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DiagnosticsMode" Prelude.<$> diagnosticsMode,
                               (JSON..=) "ExpiryTime" Prelude.<$> expiryTime,
                               (JSON..=) "PostTriggerCollectionDuration"
                                 Prelude.<$> postTriggerCollectionDuration,
                               (JSON..=) "Priority" Prelude.<$> priority,
                               (JSON..=) "SignalsToCollect" Prelude.<$> signalsToCollect,
                               (JSON..=) "SignalsToFetch" Prelude.<$> signalsToFetch,
                               (JSON..=) "SpoolingMode" Prelude.<$> spoolingMode,
                               (JSON..=) "StartTime" Prelude.<$> startTime,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Campaign where
  toJSON Campaign {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CollectionScheme" JSON..= collectionScheme, "Name" JSON..= name,
               "SignalCatalogArn" JSON..= signalCatalogArn,
               "TargetArn" JSON..= targetArn]
              (Prelude.catMaybes
                 [(JSON..=) "Action" Prelude.<$> action,
                  (JSON..=) "Compression" Prelude.<$> compression,
                  (JSON..=) "DataDestinationConfigs"
                    Prelude.<$> dataDestinationConfigs,
                  (JSON..=) "DataExtraDimensions" Prelude.<$> dataExtraDimensions,
                  (JSON..=) "DataPartitions" Prelude.<$> dataPartitions,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DiagnosticsMode" Prelude.<$> diagnosticsMode,
                  (JSON..=) "ExpiryTime" Prelude.<$> expiryTime,
                  (JSON..=) "PostTriggerCollectionDuration"
                    Prelude.<$> postTriggerCollectionDuration,
                  (JSON..=) "Priority" Prelude.<$> priority,
                  (JSON..=) "SignalsToCollect" Prelude.<$> signalsToCollect,
                  (JSON..=) "SignalsToFetch" Prelude.<$> signalsToFetch,
                  (JSON..=) "SpoolingMode" Prelude.<$> spoolingMode,
                  (JSON..=) "StartTime" Prelude.<$> startTime,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Action" Campaign where
  type PropertyType "Action" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {action = Prelude.pure newValue, ..}
instance Property "CollectionScheme" Campaign where
  type PropertyType "CollectionScheme" Campaign = CollectionSchemeProperty
  set newValue Campaign {..}
    = Campaign {collectionScheme = newValue, ..}
instance Property "Compression" Campaign where
  type PropertyType "Compression" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {compression = Prelude.pure newValue, ..}
instance Property "DataDestinationConfigs" Campaign where
  type PropertyType "DataDestinationConfigs" Campaign = [DataDestinationConfigProperty]
  set newValue Campaign {..}
    = Campaign {dataDestinationConfigs = Prelude.pure newValue, ..}
instance Property "DataExtraDimensions" Campaign where
  type PropertyType "DataExtraDimensions" Campaign = ValueList Prelude.Text
  set newValue Campaign {..}
    = Campaign {dataExtraDimensions = Prelude.pure newValue, ..}
instance Property "DataPartitions" Campaign where
  type PropertyType "DataPartitions" Campaign = [DataPartitionProperty]
  set newValue Campaign {..}
    = Campaign {dataPartitions = Prelude.pure newValue, ..}
instance Property "Description" Campaign where
  type PropertyType "Description" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {description = Prelude.pure newValue, ..}
instance Property "DiagnosticsMode" Campaign where
  type PropertyType "DiagnosticsMode" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {diagnosticsMode = Prelude.pure newValue, ..}
instance Property "ExpiryTime" Campaign where
  type PropertyType "ExpiryTime" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {expiryTime = Prelude.pure newValue, ..}
instance Property "Name" Campaign where
  type PropertyType "Name" Campaign = Value Prelude.Text
  set newValue Campaign {..} = Campaign {name = newValue, ..}
instance Property "PostTriggerCollectionDuration" Campaign where
  type PropertyType "PostTriggerCollectionDuration" Campaign = Value Prelude.Double
  set newValue Campaign {..}
    = Campaign
        {postTriggerCollectionDuration = Prelude.pure newValue, ..}
instance Property "Priority" Campaign where
  type PropertyType "Priority" Campaign = Value Prelude.Integer
  set newValue Campaign {..}
    = Campaign {priority = Prelude.pure newValue, ..}
instance Property "SignalCatalogArn" Campaign where
  type PropertyType "SignalCatalogArn" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {signalCatalogArn = newValue, ..}
instance Property "SignalsToCollect" Campaign where
  type PropertyType "SignalsToCollect" Campaign = [SignalInformationProperty]
  set newValue Campaign {..}
    = Campaign {signalsToCollect = Prelude.pure newValue, ..}
instance Property "SignalsToFetch" Campaign where
  type PropertyType "SignalsToFetch" Campaign = [SignalFetchInformationProperty]
  set newValue Campaign {..}
    = Campaign {signalsToFetch = Prelude.pure newValue, ..}
instance Property "SpoolingMode" Campaign where
  type PropertyType "SpoolingMode" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {spoolingMode = Prelude.pure newValue, ..}
instance Property "StartTime" Campaign where
  type PropertyType "StartTime" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {startTime = Prelude.pure newValue, ..}
instance Property "Tags" Campaign where
  type PropertyType "Tags" Campaign = [Tag]
  set newValue Campaign {..}
    = Campaign {tags = Prelude.pure newValue, ..}
instance Property "TargetArn" Campaign where
  type PropertyType "TargetArn" Campaign = Value Prelude.Text
  set newValue Campaign {..} = Campaign {targetArn = newValue, ..}