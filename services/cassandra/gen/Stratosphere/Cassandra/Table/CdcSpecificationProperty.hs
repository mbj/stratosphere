module Stratosphere.Cassandra.Table.CdcSpecificationProperty (
        CdcSpecificationProperty(..), mkCdcSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CdcSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-cdcspecification.html>
    CdcSpecificationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-cdcspecification.html#cfn-cassandra-table-cdcspecification-status>
                              status :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-cdcspecification.html#cfn-cassandra-table-cdcspecification-tags>
                              tags :: (Prelude.Maybe [Tag]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-cdcspecification.html#cfn-cassandra-table-cdcspecification-viewtype>
                              viewType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCdcSpecificationProperty ::
  Value Prelude.Text -> CdcSpecificationProperty
mkCdcSpecificationProperty status
  = CdcSpecificationProperty
      {haddock_workaround_ = (), status = status, tags = Prelude.Nothing,
       viewType = Prelude.Nothing}
instance ToResourceProperties CdcSpecificationProperty where
  toResourceProperties CdcSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Table.CdcSpecification",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "ViewType" Prelude.<$> viewType]))}
instance JSON.ToJSON CdcSpecificationProperty where
  toJSON CdcSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "ViewType" Prelude.<$> viewType])))
instance Property "Status" CdcSpecificationProperty where
  type PropertyType "Status" CdcSpecificationProperty = Value Prelude.Text
  set newValue CdcSpecificationProperty {..}
    = CdcSpecificationProperty {status = newValue, ..}
instance Property "Tags" CdcSpecificationProperty where
  type PropertyType "Tags" CdcSpecificationProperty = [Tag]
  set newValue CdcSpecificationProperty {..}
    = CdcSpecificationProperty {tags = Prelude.pure newValue, ..}
instance Property "ViewType" CdcSpecificationProperty where
  type PropertyType "ViewType" CdcSpecificationProperty = Value Prelude.Text
  set newValue CdcSpecificationProperty {..}
    = CdcSpecificationProperty {viewType = Prelude.pure newValue, ..}