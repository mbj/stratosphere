module Stratosphere.NetworkFirewall.TLSInspectionConfiguration (
        module Exports, TLSInspectionConfiguration(..),
        mkTLSInspectionConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.TLSInspectionConfiguration.TLSInspectionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TLSInspectionConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-tlsinspectionconfiguration.html>
    TLSInspectionConfiguration {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-tlsinspectionconfiguration.html#cfn-networkfirewall-tlsinspectionconfiguration-description>
                                description :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-tlsinspectionconfiguration.html#cfn-networkfirewall-tlsinspectionconfiguration-tlsinspectionconfiguration>
                                tLSInspectionConfiguration :: TLSInspectionConfigurationProperty,
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-tlsinspectionconfiguration.html#cfn-networkfirewall-tlsinspectionconfiguration-tlsinspectionconfigurationname>
                                tLSInspectionConfigurationName :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-tlsinspectionconfiguration.html#cfn-networkfirewall-tlsinspectionconfiguration-tags>
                                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTLSInspectionConfiguration ::
  TLSInspectionConfigurationProperty
  -> Value Prelude.Text -> TLSInspectionConfiguration
mkTLSInspectionConfiguration
  tLSInspectionConfiguration
  tLSInspectionConfigurationName
  = TLSInspectionConfiguration
      {haddock_workaround_ = (),
       tLSInspectionConfiguration = tLSInspectionConfiguration,
       tLSInspectionConfigurationName = tLSInspectionConfigurationName,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties TLSInspectionConfiguration where
  toResourceProperties TLSInspectionConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::TLSInspectionConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TLSInspectionConfiguration" JSON..= tLSInspectionConfiguration,
                            "TLSInspectionConfigurationName"
                              JSON..= tLSInspectionConfigurationName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TLSInspectionConfiguration where
  toJSON TLSInspectionConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TLSInspectionConfiguration" JSON..= tLSInspectionConfiguration,
               "TLSInspectionConfigurationName"
                 JSON..= tLSInspectionConfigurationName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" TLSInspectionConfiguration where
  type PropertyType "Description" TLSInspectionConfiguration = Value Prelude.Text
  set newValue TLSInspectionConfiguration {..}
    = TLSInspectionConfiguration
        {description = Prelude.pure newValue, ..}
instance Property "TLSInspectionConfiguration" TLSInspectionConfiguration where
  type PropertyType "TLSInspectionConfiguration" TLSInspectionConfiguration = TLSInspectionConfigurationProperty
  set newValue TLSInspectionConfiguration {..}
    = TLSInspectionConfiguration
        {tLSInspectionConfiguration = newValue, ..}
instance Property "TLSInspectionConfigurationName" TLSInspectionConfiguration where
  type PropertyType "TLSInspectionConfigurationName" TLSInspectionConfiguration = Value Prelude.Text
  set newValue TLSInspectionConfiguration {..}
    = TLSInspectionConfiguration
        {tLSInspectionConfigurationName = newValue, ..}
instance Property "Tags" TLSInspectionConfiguration where
  type PropertyType "Tags" TLSInspectionConfiguration = [Tag]
  set newValue TLSInspectionConfiguration {..}
    = TLSInspectionConfiguration {tags = Prelude.pure newValue, ..}