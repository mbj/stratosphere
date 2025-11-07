module Stratosphere.ImageBuilder.DistributionConfiguration.SsmParameterConfigurationProperty (
        SsmParameterConfigurationProperty(..),
        mkSsmParameterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SsmParameterConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-ssmparameterconfiguration.html>
    SsmParameterConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-ssmparameterconfiguration.html#cfn-imagebuilder-distributionconfiguration-ssmparameterconfiguration-amiaccountid>
                                       amiAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-ssmparameterconfiguration.html#cfn-imagebuilder-distributionconfiguration-ssmparameterconfiguration-datatype>
                                       dataType :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-ssmparameterconfiguration.html#cfn-imagebuilder-distributionconfiguration-ssmparameterconfiguration-parametername>
                                       parameterName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSsmParameterConfigurationProperty ::
  Value Prelude.Text -> SsmParameterConfigurationProperty
mkSsmParameterConfigurationProperty parameterName
  = SsmParameterConfigurationProperty
      {haddock_workaround_ = (), parameterName = parameterName,
       amiAccountId = Prelude.Nothing, dataType = Prelude.Nothing}
instance ToResourceProperties SsmParameterConfigurationProperty where
  toResourceProperties SsmParameterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration.SsmParameterConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ParameterName" JSON..= parameterName]
                           (Prelude.catMaybes
                              [(JSON..=) "AmiAccountId" Prelude.<$> amiAccountId,
                               (JSON..=) "DataType" Prelude.<$> dataType]))}
instance JSON.ToJSON SsmParameterConfigurationProperty where
  toJSON SsmParameterConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ParameterName" JSON..= parameterName]
              (Prelude.catMaybes
                 [(JSON..=) "AmiAccountId" Prelude.<$> amiAccountId,
                  (JSON..=) "DataType" Prelude.<$> dataType])))
instance Property "AmiAccountId" SsmParameterConfigurationProperty where
  type PropertyType "AmiAccountId" SsmParameterConfigurationProperty = Value Prelude.Text
  set newValue SsmParameterConfigurationProperty {..}
    = SsmParameterConfigurationProperty
        {amiAccountId = Prelude.pure newValue, ..}
instance Property "DataType" SsmParameterConfigurationProperty where
  type PropertyType "DataType" SsmParameterConfigurationProperty = Value Prelude.Text
  set newValue SsmParameterConfigurationProperty {..}
    = SsmParameterConfigurationProperty
        {dataType = Prelude.pure newValue, ..}
instance Property "ParameterName" SsmParameterConfigurationProperty where
  type PropertyType "ParameterName" SsmParameterConfigurationProperty = Value Prelude.Text
  set newValue SsmParameterConfigurationProperty {..}
    = SsmParameterConfigurationProperty {parameterName = newValue, ..}