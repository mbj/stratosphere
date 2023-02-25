module Stratosphere.IoTFleetWise.Campaign (
        module Exports, Campaign(..), mkCampaign
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.CollectionSchemeProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.SignalInformationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Campaign
  = Campaign {action :: (Value Prelude.Text),
              collectionScheme :: CollectionSchemeProperty,
              compression :: (Prelude.Maybe (Value Prelude.Text)),
              dataExtraDimensions :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
              description :: (Prelude.Maybe (Value Prelude.Text)),
              diagnosticsMode :: (Prelude.Maybe (Value Prelude.Text)),
              expiryTime :: (Prelude.Maybe (Value Prelude.Text)),
              name :: (Value Prelude.Text),
              postTriggerCollectionDuration :: (Prelude.Maybe (Value Prelude.Double)),
              priority :: (Prelude.Maybe (Value Prelude.Integer)),
              signalCatalogArn :: (Value Prelude.Text),
              signalsToCollect :: (Prelude.Maybe [SignalInformationProperty]),
              spoolingMode :: (Prelude.Maybe (Value Prelude.Text)),
              startTime :: (Prelude.Maybe (Value Prelude.Text)),
              tags :: (Prelude.Maybe [Tag]),
              targetArn :: (Value Prelude.Text)}
mkCampaign ::
  Value Prelude.Text
  -> CollectionSchemeProperty
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> Campaign
mkCampaign action collectionScheme name signalCatalogArn targetArn
  = Campaign
      {action = action, collectionScheme = collectionScheme, name = name,
       signalCatalogArn = signalCatalogArn, targetArn = targetArn,
       compression = Prelude.Nothing,
       dataExtraDimensions = Prelude.Nothing,
       description = Prelude.Nothing, diagnosticsMode = Prelude.Nothing,
       expiryTime = Prelude.Nothing,
       postTriggerCollectionDuration = Prelude.Nothing,
       priority = Prelude.Nothing, signalsToCollect = Prelude.Nothing,
       spoolingMode = Prelude.Nothing, startTime = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Campaign where
  toResourceProperties Campaign {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action,
                            "CollectionScheme" JSON..= collectionScheme, "Name" JSON..= name,
                            "SignalCatalogArn" JSON..= signalCatalogArn,
                            "TargetArn" JSON..= targetArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Compression" Prelude.<$> compression,
                               (JSON..=) "DataExtraDimensions" Prelude.<$> dataExtraDimensions,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DiagnosticsMode" Prelude.<$> diagnosticsMode,
                               (JSON..=) "ExpiryTime" Prelude.<$> expiryTime,
                               (JSON..=) "PostTriggerCollectionDuration"
                                 Prelude.<$> postTriggerCollectionDuration,
                               (JSON..=) "Priority" Prelude.<$> priority,
                               (JSON..=) "SignalsToCollect" Prelude.<$> signalsToCollect,
                               (JSON..=) "SpoolingMode" Prelude.<$> spoolingMode,
                               (JSON..=) "StartTime" Prelude.<$> startTime,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Campaign where
  toJSON Campaign {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action,
               "CollectionScheme" JSON..= collectionScheme, "Name" JSON..= name,
               "SignalCatalogArn" JSON..= signalCatalogArn,
               "TargetArn" JSON..= targetArn]
              (Prelude.catMaybes
                 [(JSON..=) "Compression" Prelude.<$> compression,
                  (JSON..=) "DataExtraDimensions" Prelude.<$> dataExtraDimensions,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DiagnosticsMode" Prelude.<$> diagnosticsMode,
                  (JSON..=) "ExpiryTime" Prelude.<$> expiryTime,
                  (JSON..=) "PostTriggerCollectionDuration"
                    Prelude.<$> postTriggerCollectionDuration,
                  (JSON..=) "Priority" Prelude.<$> priority,
                  (JSON..=) "SignalsToCollect" Prelude.<$> signalsToCollect,
                  (JSON..=) "SpoolingMode" Prelude.<$> spoolingMode,
                  (JSON..=) "StartTime" Prelude.<$> startTime,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Action" Campaign where
  type PropertyType "Action" Campaign = Value Prelude.Text
  set newValue Campaign {..} = Campaign {action = newValue, ..}
instance Property "CollectionScheme" Campaign where
  type PropertyType "CollectionScheme" Campaign = CollectionSchemeProperty
  set newValue Campaign {..}
    = Campaign {collectionScheme = newValue, ..}
instance Property "Compression" Campaign where
  type PropertyType "Compression" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {compression = Prelude.pure newValue, ..}
instance Property "DataExtraDimensions" Campaign where
  type PropertyType "DataExtraDimensions" Campaign = ValueList (Value Prelude.Text)
  set newValue Campaign {..}
    = Campaign {dataExtraDimensions = Prelude.pure newValue, ..}
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