module Stratosphere.Lambda.Alias.AliasRoutingConfigurationProperty (
        module Exports, AliasRoutingConfigurationProperty(..),
        mkAliasRoutingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.Alias.VersionWeightProperty as Exports
import Stratosphere.ResourceProperties
data AliasRoutingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-aliasroutingconfiguration.html>
    AliasRoutingConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-aliasroutingconfiguration.html#cfn-lambda-alias-aliasroutingconfiguration-additionalversionweights>
                                       additionalVersionWeights :: (Prelude.Maybe [VersionWeightProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAliasRoutingConfigurationProperty ::
  AliasRoutingConfigurationProperty
mkAliasRoutingConfigurationProperty
  = AliasRoutingConfigurationProperty
      {haddock_workaround_ = (),
       additionalVersionWeights = Prelude.Nothing}
instance ToResourceProperties AliasRoutingConfigurationProperty where
  toResourceProperties AliasRoutingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Alias.AliasRoutingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalVersionWeights"
                              Prelude.<$> additionalVersionWeights])}
instance JSON.ToJSON AliasRoutingConfigurationProperty where
  toJSON AliasRoutingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalVersionWeights"
                 Prelude.<$> additionalVersionWeights]))
instance Property "AdditionalVersionWeights" AliasRoutingConfigurationProperty where
  type PropertyType "AdditionalVersionWeights" AliasRoutingConfigurationProperty = [VersionWeightProperty]
  set newValue AliasRoutingConfigurationProperty {..}
    = AliasRoutingConfigurationProperty
        {additionalVersionWeights = Prelude.pure newValue, ..}