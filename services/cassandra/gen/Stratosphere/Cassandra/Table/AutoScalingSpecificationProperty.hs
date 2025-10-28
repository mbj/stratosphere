module Stratosphere.Cassandra.Table.AutoScalingSpecificationProperty (
        module Exports, AutoScalingSpecificationProperty(..),
        mkAutoScalingSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cassandra.Table.AutoScalingSettingProperty as Exports
import Stratosphere.ResourceProperties
data AutoScalingSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-autoscalingspecification.html>
    AutoScalingSpecificationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-autoscalingspecification.html#cfn-cassandra-table-autoscalingspecification-readcapacityautoscaling>
                                      readCapacityAutoScaling :: (Prelude.Maybe AutoScalingSettingProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-autoscalingspecification.html#cfn-cassandra-table-autoscalingspecification-writecapacityautoscaling>
                                      writeCapacityAutoScaling :: (Prelude.Maybe AutoScalingSettingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoScalingSpecificationProperty ::
  AutoScalingSpecificationProperty
mkAutoScalingSpecificationProperty
  = AutoScalingSpecificationProperty
      {haddock_workaround_ = (),
       readCapacityAutoScaling = Prelude.Nothing,
       writeCapacityAutoScaling = Prelude.Nothing}
instance ToResourceProperties AutoScalingSpecificationProperty where
  toResourceProperties AutoScalingSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Table.AutoScalingSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReadCapacityAutoScaling"
                              Prelude.<$> readCapacityAutoScaling,
                            (JSON..=) "WriteCapacityAutoScaling"
                              Prelude.<$> writeCapacityAutoScaling])}
instance JSON.ToJSON AutoScalingSpecificationProperty where
  toJSON AutoScalingSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReadCapacityAutoScaling"
                 Prelude.<$> readCapacityAutoScaling,
               (JSON..=) "WriteCapacityAutoScaling"
                 Prelude.<$> writeCapacityAutoScaling]))
instance Property "ReadCapacityAutoScaling" AutoScalingSpecificationProperty where
  type PropertyType "ReadCapacityAutoScaling" AutoScalingSpecificationProperty = AutoScalingSettingProperty
  set newValue AutoScalingSpecificationProperty {..}
    = AutoScalingSpecificationProperty
        {readCapacityAutoScaling = Prelude.pure newValue, ..}
instance Property "WriteCapacityAutoScaling" AutoScalingSpecificationProperty where
  type PropertyType "WriteCapacityAutoScaling" AutoScalingSpecificationProperty = AutoScalingSettingProperty
  set newValue AutoScalingSpecificationProperty {..}
    = AutoScalingSpecificationProperty
        {writeCapacityAutoScaling = Prelude.pure newValue, ..}