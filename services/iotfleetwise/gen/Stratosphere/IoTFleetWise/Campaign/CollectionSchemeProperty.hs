module Stratosphere.IoTFleetWise.Campaign.CollectionSchemeProperty (
        module Exports, CollectionSchemeProperty(..),
        mkCollectionSchemeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.ConditionBasedCollectionSchemeProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.TimeBasedCollectionSchemeProperty as Exports
import Stratosphere.ResourceProperties
data CollectionSchemeProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-collectionscheme.html>
    CollectionSchemeProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-collectionscheme.html#cfn-iotfleetwise-campaign-collectionscheme-conditionbasedcollectionscheme>
                              conditionBasedCollectionScheme :: (Prelude.Maybe ConditionBasedCollectionSchemeProperty),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-collectionscheme.html#cfn-iotfleetwise-campaign-collectionscheme-timebasedcollectionscheme>
                              timeBasedCollectionScheme :: (Prelude.Maybe TimeBasedCollectionSchemeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCollectionSchemeProperty :: CollectionSchemeProperty
mkCollectionSchemeProperty
  = CollectionSchemeProperty
      {conditionBasedCollectionScheme = Prelude.Nothing,
       timeBasedCollectionScheme = Prelude.Nothing}
instance ToResourceProperties CollectionSchemeProperty where
  toResourceProperties CollectionSchemeProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.CollectionScheme",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConditionBasedCollectionScheme"
                              Prelude.<$> conditionBasedCollectionScheme,
                            (JSON..=) "TimeBasedCollectionScheme"
                              Prelude.<$> timeBasedCollectionScheme])}
instance JSON.ToJSON CollectionSchemeProperty where
  toJSON CollectionSchemeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConditionBasedCollectionScheme"
                 Prelude.<$> conditionBasedCollectionScheme,
               (JSON..=) "TimeBasedCollectionScheme"
                 Prelude.<$> timeBasedCollectionScheme]))
instance Property "ConditionBasedCollectionScheme" CollectionSchemeProperty where
  type PropertyType "ConditionBasedCollectionScheme" CollectionSchemeProperty = ConditionBasedCollectionSchemeProperty
  set newValue CollectionSchemeProperty {..}
    = CollectionSchemeProperty
        {conditionBasedCollectionScheme = Prelude.pure newValue, ..}
instance Property "TimeBasedCollectionScheme" CollectionSchemeProperty where
  type PropertyType "TimeBasedCollectionScheme" CollectionSchemeProperty = TimeBasedCollectionSchemeProperty
  set newValue CollectionSchemeProperty {..}
    = CollectionSchemeProperty
        {timeBasedCollectionScheme = Prelude.pure newValue, ..}