module Stratosphere.FSx.Volume.AggregateConfigurationProperty (
        AggregateConfigurationProperty(..),
        mkAggregateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AggregateConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-aggregateconfiguration.html>
    AggregateConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-aggregateconfiguration.html#cfn-fsx-volume-ontapconfiguration-aggregateconfiguration-aggregates>
                                    aggregates :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-aggregateconfiguration.html#cfn-fsx-volume-ontapconfiguration-aggregateconfiguration-constituentsperaggregate>
                                    constituentsPerAggregate :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAggregateConfigurationProperty :: AggregateConfigurationProperty
mkAggregateConfigurationProperty
  = AggregateConfigurationProperty
      {haddock_workaround_ = (), aggregates = Prelude.Nothing,
       constituentsPerAggregate = Prelude.Nothing}
instance ToResourceProperties AggregateConfigurationProperty where
  toResourceProperties AggregateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume.AggregateConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Aggregates" Prelude.<$> aggregates,
                            (JSON..=) "ConstituentsPerAggregate"
                              Prelude.<$> constituentsPerAggregate])}
instance JSON.ToJSON AggregateConfigurationProperty where
  toJSON AggregateConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Aggregates" Prelude.<$> aggregates,
               (JSON..=) "ConstituentsPerAggregate"
                 Prelude.<$> constituentsPerAggregate]))
instance Property "Aggregates" AggregateConfigurationProperty where
  type PropertyType "Aggregates" AggregateConfigurationProperty = ValueList Prelude.Text
  set newValue AggregateConfigurationProperty {..}
    = AggregateConfigurationProperty
        {aggregates = Prelude.pure newValue, ..}
instance Property "ConstituentsPerAggregate" AggregateConfigurationProperty where
  type PropertyType "ConstituentsPerAggregate" AggregateConfigurationProperty = Value Prelude.Integer
  set newValue AggregateConfigurationProperty {..}
    = AggregateConfigurationProperty
        {constituentsPerAggregate = Prelude.pure newValue, ..}