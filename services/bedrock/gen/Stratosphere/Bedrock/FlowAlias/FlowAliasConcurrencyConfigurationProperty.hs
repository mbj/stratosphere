module Stratosphere.Bedrock.FlowAlias.FlowAliasConcurrencyConfigurationProperty (
        FlowAliasConcurrencyConfigurationProperty(..),
        mkFlowAliasConcurrencyConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowAliasConcurrencyConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowalias-flowaliasconcurrencyconfiguration.html>
    FlowAliasConcurrencyConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowalias-flowaliasconcurrencyconfiguration.html#cfn-bedrock-flowalias-flowaliasconcurrencyconfiguration-maxconcurrency>
                                               maxConcurrency :: (Prelude.Maybe (Value Prelude.Double)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowalias-flowaliasconcurrencyconfiguration.html#cfn-bedrock-flowalias-flowaliasconcurrencyconfiguration-type>
                                               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowAliasConcurrencyConfigurationProperty ::
  Value Prelude.Text -> FlowAliasConcurrencyConfigurationProperty
mkFlowAliasConcurrencyConfigurationProperty type'
  = FlowAliasConcurrencyConfigurationProperty
      {haddock_workaround_ = (), type' = type',
       maxConcurrency = Prelude.Nothing}
instance ToResourceProperties FlowAliasConcurrencyConfigurationProperty where
  toResourceProperties FlowAliasConcurrencyConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowAlias.FlowAliasConcurrencyConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "MaxConcurrency" Prelude.<$> maxConcurrency]))}
instance JSON.ToJSON FlowAliasConcurrencyConfigurationProperty where
  toJSON FlowAliasConcurrencyConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "MaxConcurrency" Prelude.<$> maxConcurrency])))
instance Property "MaxConcurrency" FlowAliasConcurrencyConfigurationProperty where
  type PropertyType "MaxConcurrency" FlowAliasConcurrencyConfigurationProperty = Value Prelude.Double
  set newValue FlowAliasConcurrencyConfigurationProperty {..}
    = FlowAliasConcurrencyConfigurationProperty
        {maxConcurrency = Prelude.pure newValue, ..}
instance Property "Type" FlowAliasConcurrencyConfigurationProperty where
  type PropertyType "Type" FlowAliasConcurrencyConfigurationProperty = Value Prelude.Text
  set newValue FlowAliasConcurrencyConfigurationProperty {..}
    = FlowAliasConcurrencyConfigurationProperty {type' = newValue, ..}