module Stratosphere.QuickSight.DataSet.RowLevelPermissionDataSetProperty (
        RowLevelPermissionDataSetProperty(..),
        mkRowLevelPermissionDataSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RowLevelPermissionDataSetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-rowlevelpermissiondataset.html>
    RowLevelPermissionDataSetProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-rowlevelpermissiondataset.html#cfn-quicksight-dataset-rowlevelpermissiondataset-arn>
                                       arn :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-rowlevelpermissiondataset.html#cfn-quicksight-dataset-rowlevelpermissiondataset-formatversion>
                                       formatVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-rowlevelpermissiondataset.html#cfn-quicksight-dataset-rowlevelpermissiondataset-namespace>
                                       namespace :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-rowlevelpermissiondataset.html#cfn-quicksight-dataset-rowlevelpermissiondataset-permissionpolicy>
                                       permissionPolicy :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-rowlevelpermissiondataset.html#cfn-quicksight-dataset-rowlevelpermissiondataset-status>
                                       status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRowLevelPermissionDataSetProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RowLevelPermissionDataSetProperty
mkRowLevelPermissionDataSetProperty arn permissionPolicy
  = RowLevelPermissionDataSetProperty
      {haddock_workaround_ = (), arn = arn,
       permissionPolicy = permissionPolicy,
       formatVersion = Prelude.Nothing, namespace = Prelude.Nothing,
       status = Prelude.Nothing}
instance ToResourceProperties RowLevelPermissionDataSetProperty where
  toResourceProperties RowLevelPermissionDataSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.RowLevelPermissionDataSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Arn" JSON..= arn, "PermissionPolicy" JSON..= permissionPolicy]
                           (Prelude.catMaybes
                              [(JSON..=) "FormatVersion" Prelude.<$> formatVersion,
                               (JSON..=) "Namespace" Prelude.<$> namespace,
                               (JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON RowLevelPermissionDataSetProperty where
  toJSON RowLevelPermissionDataSetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Arn" JSON..= arn, "PermissionPolicy" JSON..= permissionPolicy]
              (Prelude.catMaybes
                 [(JSON..=) "FormatVersion" Prelude.<$> formatVersion,
                  (JSON..=) "Namespace" Prelude.<$> namespace,
                  (JSON..=) "Status" Prelude.<$> status])))
instance Property "Arn" RowLevelPermissionDataSetProperty where
  type PropertyType "Arn" RowLevelPermissionDataSetProperty = Value Prelude.Text
  set newValue RowLevelPermissionDataSetProperty {..}
    = RowLevelPermissionDataSetProperty {arn = newValue, ..}
instance Property "FormatVersion" RowLevelPermissionDataSetProperty where
  type PropertyType "FormatVersion" RowLevelPermissionDataSetProperty = Value Prelude.Text
  set newValue RowLevelPermissionDataSetProperty {..}
    = RowLevelPermissionDataSetProperty
        {formatVersion = Prelude.pure newValue, ..}
instance Property "Namespace" RowLevelPermissionDataSetProperty where
  type PropertyType "Namespace" RowLevelPermissionDataSetProperty = Value Prelude.Text
  set newValue RowLevelPermissionDataSetProperty {..}
    = RowLevelPermissionDataSetProperty
        {namespace = Prelude.pure newValue, ..}
instance Property "PermissionPolicy" RowLevelPermissionDataSetProperty where
  type PropertyType "PermissionPolicy" RowLevelPermissionDataSetProperty = Value Prelude.Text
  set newValue RowLevelPermissionDataSetProperty {..}
    = RowLevelPermissionDataSetProperty
        {permissionPolicy = newValue, ..}
instance Property "Status" RowLevelPermissionDataSetProperty where
  type PropertyType "Status" RowLevelPermissionDataSetProperty = Value Prelude.Text
  set newValue RowLevelPermissionDataSetProperty {..}
    = RowLevelPermissionDataSetProperty
        {status = Prelude.pure newValue, ..}