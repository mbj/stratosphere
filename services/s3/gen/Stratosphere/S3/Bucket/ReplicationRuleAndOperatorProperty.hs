module Stratosphere.S3.Bucket.ReplicationRuleAndOperatorProperty (
        module Exports, ReplicationRuleAndOperatorProperty(..),
        mkReplicationRuleAndOperatorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.TagFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationRuleAndOperatorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationruleandoperator.html>
    ReplicationRuleAndOperatorProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationruleandoperator.html#cfn-s3-bucket-replicationruleandoperator-prefix>
                                        prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationruleandoperator.html#cfn-s3-bucket-replicationruleandoperator-tagfilters>
                                        tagFilters :: (Prelude.Maybe [TagFilterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationRuleAndOperatorProperty ::
  ReplicationRuleAndOperatorProperty
mkReplicationRuleAndOperatorProperty
  = ReplicationRuleAndOperatorProperty
      {haddock_workaround_ = (), prefix = Prelude.Nothing,
       tagFilters = Prelude.Nothing}
instance ToResourceProperties ReplicationRuleAndOperatorProperty where
  toResourceProperties ReplicationRuleAndOperatorProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.ReplicationRuleAndOperator",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "TagFilters" Prelude.<$> tagFilters])}
instance JSON.ToJSON ReplicationRuleAndOperatorProperty where
  toJSON ReplicationRuleAndOperatorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "TagFilters" Prelude.<$> tagFilters]))
instance Property "Prefix" ReplicationRuleAndOperatorProperty where
  type PropertyType "Prefix" ReplicationRuleAndOperatorProperty = Value Prelude.Text
  set newValue ReplicationRuleAndOperatorProperty {..}
    = ReplicationRuleAndOperatorProperty
        {prefix = Prelude.pure newValue, ..}
instance Property "TagFilters" ReplicationRuleAndOperatorProperty where
  type PropertyType "TagFilters" ReplicationRuleAndOperatorProperty = [TagFilterProperty]
  set newValue ReplicationRuleAndOperatorProperty {..}
    = ReplicationRuleAndOperatorProperty
        {tagFilters = Prelude.pure newValue, ..}