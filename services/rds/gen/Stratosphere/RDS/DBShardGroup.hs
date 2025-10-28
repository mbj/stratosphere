module Stratosphere.RDS.DBShardGroup (
        DBShardGroup(..), mkDBShardGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DBShardGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbshardgroup.html>
    DBShardGroup {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbshardgroup.html#cfn-rds-dbshardgroup-computeredundancy>
                  computeRedundancy :: (Prelude.Maybe (Value Prelude.Integer)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbshardgroup.html#cfn-rds-dbshardgroup-dbclusteridentifier>
                  dBClusterIdentifier :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbshardgroup.html#cfn-rds-dbshardgroup-dbshardgroupidentifier>
                  dBShardGroupIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbshardgroup.html#cfn-rds-dbshardgroup-maxacu>
                  maxACU :: (Value Prelude.Double),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbshardgroup.html#cfn-rds-dbshardgroup-minacu>
                  minACU :: (Prelude.Maybe (Value Prelude.Double)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbshardgroup.html#cfn-rds-dbshardgroup-publiclyaccessible>
                  publiclyAccessible :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbshardgroup.html#cfn-rds-dbshardgroup-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBShardGroup ::
  Value Prelude.Text -> Value Prelude.Double -> DBShardGroup
mkDBShardGroup dBClusterIdentifier maxACU
  = DBShardGroup
      {haddock_workaround_ = (),
       dBClusterIdentifier = dBClusterIdentifier, maxACU = maxACU,
       computeRedundancy = Prelude.Nothing,
       dBShardGroupIdentifier = Prelude.Nothing, minACU = Prelude.Nothing,
       publiclyAccessible = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DBShardGroup where
  toResourceProperties DBShardGroup {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBShardGroup", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DBClusterIdentifier" JSON..= dBClusterIdentifier,
                            "MaxACU" JSON..= maxACU]
                           (Prelude.catMaybes
                              [(JSON..=) "ComputeRedundancy" Prelude.<$> computeRedundancy,
                               (JSON..=) "DBShardGroupIdentifier"
                                 Prelude.<$> dBShardGroupIdentifier,
                               (JSON..=) "MinACU" Prelude.<$> minACU,
                               (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DBShardGroup where
  toJSON DBShardGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DBClusterIdentifier" JSON..= dBClusterIdentifier,
               "MaxACU" JSON..= maxACU]
              (Prelude.catMaybes
                 [(JSON..=) "ComputeRedundancy" Prelude.<$> computeRedundancy,
                  (JSON..=) "DBShardGroupIdentifier"
                    Prelude.<$> dBShardGroupIdentifier,
                  (JSON..=) "MinACU" Prelude.<$> minACU,
                  (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ComputeRedundancy" DBShardGroup where
  type PropertyType "ComputeRedundancy" DBShardGroup = Value Prelude.Integer
  set newValue DBShardGroup {..}
    = DBShardGroup {computeRedundancy = Prelude.pure newValue, ..}
instance Property "DBClusterIdentifier" DBShardGroup where
  type PropertyType "DBClusterIdentifier" DBShardGroup = Value Prelude.Text
  set newValue DBShardGroup {..}
    = DBShardGroup {dBClusterIdentifier = newValue, ..}
instance Property "DBShardGroupIdentifier" DBShardGroup where
  type PropertyType "DBShardGroupIdentifier" DBShardGroup = Value Prelude.Text
  set newValue DBShardGroup {..}
    = DBShardGroup {dBShardGroupIdentifier = Prelude.pure newValue, ..}
instance Property "MaxACU" DBShardGroup where
  type PropertyType "MaxACU" DBShardGroup = Value Prelude.Double
  set newValue DBShardGroup {..}
    = DBShardGroup {maxACU = newValue, ..}
instance Property "MinACU" DBShardGroup where
  type PropertyType "MinACU" DBShardGroup = Value Prelude.Double
  set newValue DBShardGroup {..}
    = DBShardGroup {minACU = Prelude.pure newValue, ..}
instance Property "PubliclyAccessible" DBShardGroup where
  type PropertyType "PubliclyAccessible" DBShardGroup = Value Prelude.Bool
  set newValue DBShardGroup {..}
    = DBShardGroup {publiclyAccessible = Prelude.pure newValue, ..}
instance Property "Tags" DBShardGroup where
  type PropertyType "Tags" DBShardGroup = [Tag]
  set newValue DBShardGroup {..}
    = DBShardGroup {tags = Prelude.pure newValue, ..}