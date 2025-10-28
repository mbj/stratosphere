module Stratosphere.DynamoDB.Table.OnDemandThroughputProperty (
        OnDemandThroughputProperty(..), mkOnDemandThroughputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnDemandThroughputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ondemandthroughput.html>
    OnDemandThroughputProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ondemandthroughput.html#cfn-dynamodb-table-ondemandthroughput-maxreadrequestunits>
                                maxReadRequestUnits :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ondemandthroughput.html#cfn-dynamodb-table-ondemandthroughput-maxwriterequestunits>
                                maxWriteRequestUnits :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnDemandThroughputProperty :: OnDemandThroughputProperty
mkOnDemandThroughputProperty
  = OnDemandThroughputProperty
      {haddock_workaround_ = (), maxReadRequestUnits = Prelude.Nothing,
       maxWriteRequestUnits = Prelude.Nothing}
instance ToResourceProperties OnDemandThroughputProperty where
  toResourceProperties OnDemandThroughputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.OnDemandThroughput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxReadRequestUnits" Prelude.<$> maxReadRequestUnits,
                            (JSON..=) "MaxWriteRequestUnits"
                              Prelude.<$> maxWriteRequestUnits])}
instance JSON.ToJSON OnDemandThroughputProperty where
  toJSON OnDemandThroughputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxReadRequestUnits" Prelude.<$> maxReadRequestUnits,
               (JSON..=) "MaxWriteRequestUnits"
                 Prelude.<$> maxWriteRequestUnits]))
instance Property "MaxReadRequestUnits" OnDemandThroughputProperty where
  type PropertyType "MaxReadRequestUnits" OnDemandThroughputProperty = Value Prelude.Integer
  set newValue OnDemandThroughputProperty {..}
    = OnDemandThroughputProperty
        {maxReadRequestUnits = Prelude.pure newValue, ..}
instance Property "MaxWriteRequestUnits" OnDemandThroughputProperty where
  type PropertyType "MaxWriteRequestUnits" OnDemandThroughputProperty = Value Prelude.Integer
  set newValue OnDemandThroughputProperty {..}
    = OnDemandThroughputProperty
        {maxWriteRequestUnits = Prelude.pure newValue, ..}