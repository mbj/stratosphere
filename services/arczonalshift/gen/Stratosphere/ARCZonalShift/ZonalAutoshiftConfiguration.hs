module Stratosphere.ARCZonalShift.ZonalAutoshiftConfiguration (
        module Exports, ZonalAutoshiftConfiguration(..),
        mkZonalAutoshiftConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ARCZonalShift.ZonalAutoshiftConfiguration.PracticeRunConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ZonalAutoshiftConfiguration
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arczonalshift-zonalautoshiftconfiguration.html>
    ZonalAutoshiftConfiguration {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arczonalshift-zonalautoshiftconfiguration.html#cfn-arczonalshift-zonalautoshiftconfiguration-practicerunconfiguration>
                                 practiceRunConfiguration :: (Prelude.Maybe PracticeRunConfigurationProperty),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arczonalshift-zonalautoshiftconfiguration.html#cfn-arczonalshift-zonalautoshiftconfiguration-resourceidentifier>
                                 resourceIdentifier :: (Value Prelude.Text),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arczonalshift-zonalautoshiftconfiguration.html#cfn-arczonalshift-zonalautoshiftconfiguration-zonalautoshiftstatus>
                                 zonalAutoshiftStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkZonalAutoshiftConfiguration ::
  Value Prelude.Text -> ZonalAutoshiftConfiguration
mkZonalAutoshiftConfiguration resourceIdentifier
  = ZonalAutoshiftConfiguration
      {resourceIdentifier = resourceIdentifier,
       practiceRunConfiguration = Prelude.Nothing,
       zonalAutoshiftStatus = Prelude.Nothing}
instance ToResourceProperties ZonalAutoshiftConfiguration where
  toResourceProperties ZonalAutoshiftConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::ARCZonalShift::ZonalAutoshiftConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceIdentifier" JSON..= resourceIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "PracticeRunConfiguration"
                                 Prelude.<$> practiceRunConfiguration,
                               (JSON..=) "ZonalAutoshiftStatus"
                                 Prelude.<$> zonalAutoshiftStatus]))}
instance JSON.ToJSON ZonalAutoshiftConfiguration where
  toJSON ZonalAutoshiftConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceIdentifier" JSON..= resourceIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "PracticeRunConfiguration"
                    Prelude.<$> practiceRunConfiguration,
                  (JSON..=) "ZonalAutoshiftStatus"
                    Prelude.<$> zonalAutoshiftStatus])))
instance Property "PracticeRunConfiguration" ZonalAutoshiftConfiguration where
  type PropertyType "PracticeRunConfiguration" ZonalAutoshiftConfiguration = PracticeRunConfigurationProperty
  set newValue ZonalAutoshiftConfiguration {..}
    = ZonalAutoshiftConfiguration
        {practiceRunConfiguration = Prelude.pure newValue, ..}
instance Property "ResourceIdentifier" ZonalAutoshiftConfiguration where
  type PropertyType "ResourceIdentifier" ZonalAutoshiftConfiguration = Value Prelude.Text
  set newValue ZonalAutoshiftConfiguration {..}
    = ZonalAutoshiftConfiguration {resourceIdentifier = newValue, ..}
instance Property "ZonalAutoshiftStatus" ZonalAutoshiftConfiguration where
  type PropertyType "ZonalAutoshiftStatus" ZonalAutoshiftConfiguration = Value Prelude.Text
  set newValue ZonalAutoshiftConfiguration {..}
    = ZonalAutoshiftConfiguration
        {zonalAutoshiftStatus = Prelude.pure newValue, ..}