module Stratosphere.Timestream.Table.PartitionKeyProperty (
        PartitionKeyProperty(..), mkPartitionKeyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PartitionKeyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-table-partitionkey.html>
    PartitionKeyProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-table-partitionkey.html#cfn-timestream-table-partitionkey-enforcementinrecord>
                          enforcementInRecord :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-table-partitionkey.html#cfn-timestream-table-partitionkey-name>
                          name :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-table-partitionkey.html#cfn-timestream-table-partitionkey-type>
                          type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPartitionKeyProperty ::
  Value Prelude.Text -> PartitionKeyProperty
mkPartitionKeyProperty type'
  = PartitionKeyProperty
      {haddock_workaround_ = (), type' = type',
       enforcementInRecord = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties PartitionKeyProperty where
  toResourceProperties PartitionKeyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::Table.PartitionKey",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "EnforcementInRecord" Prelude.<$> enforcementInRecord,
                               (JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON PartitionKeyProperty where
  toJSON PartitionKeyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "EnforcementInRecord" Prelude.<$> enforcementInRecord,
                  (JSON..=) "Name" Prelude.<$> name])))
instance Property "EnforcementInRecord" PartitionKeyProperty where
  type PropertyType "EnforcementInRecord" PartitionKeyProperty = Value Prelude.Text
  set newValue PartitionKeyProperty {..}
    = PartitionKeyProperty
        {enforcementInRecord = Prelude.pure newValue, ..}
instance Property "Name" PartitionKeyProperty where
  type PropertyType "Name" PartitionKeyProperty = Value Prelude.Text
  set newValue PartitionKeyProperty {..}
    = PartitionKeyProperty {name = Prelude.pure newValue, ..}
instance Property "Type" PartitionKeyProperty where
  type PropertyType "Type" PartitionKeyProperty = Value Prelude.Text
  set newValue PartitionKeyProperty {..}
    = PartitionKeyProperty {type' = newValue, ..}