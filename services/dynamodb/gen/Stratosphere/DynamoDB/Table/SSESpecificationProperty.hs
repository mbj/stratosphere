module Stratosphere.DynamoDB.Table.SSESpecificationProperty (
        SSESpecificationProperty(..), mkSSESpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SSESpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html>
    SSESpecificationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html#cfn-dynamodb-table-ssespecification-kmsmasterkeyid>
                              kMSMasterKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html#cfn-dynamodb-table-ssespecification-sseenabled>
                              sSEEnabled :: (Value Prelude.Bool),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html#cfn-dynamodb-table-ssespecification-ssetype>
                              sSEType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSSESpecificationProperty ::
  Value Prelude.Bool -> SSESpecificationProperty
mkSSESpecificationProperty sSEEnabled
  = SSESpecificationProperty
      {haddock_workaround_ = (), sSEEnabled = sSEEnabled,
       kMSMasterKeyId = Prelude.Nothing, sSEType = Prelude.Nothing}
instance ToResourceProperties SSESpecificationProperty where
  toResourceProperties SSESpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.SSESpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SSEEnabled" JSON..= sSEEnabled]
                           (Prelude.catMaybes
                              [(JSON..=) "KMSMasterKeyId" Prelude.<$> kMSMasterKeyId,
                               (JSON..=) "SSEType" Prelude.<$> sSEType]))}
instance JSON.ToJSON SSESpecificationProperty where
  toJSON SSESpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SSEEnabled" JSON..= sSEEnabled]
              (Prelude.catMaybes
                 [(JSON..=) "KMSMasterKeyId" Prelude.<$> kMSMasterKeyId,
                  (JSON..=) "SSEType" Prelude.<$> sSEType])))
instance Property "KMSMasterKeyId" SSESpecificationProperty where
  type PropertyType "KMSMasterKeyId" SSESpecificationProperty = Value Prelude.Text
  set newValue SSESpecificationProperty {..}
    = SSESpecificationProperty
        {kMSMasterKeyId = Prelude.pure newValue, ..}
instance Property "SSEEnabled" SSESpecificationProperty where
  type PropertyType "SSEEnabled" SSESpecificationProperty = Value Prelude.Bool
  set newValue SSESpecificationProperty {..}
    = SSESpecificationProperty {sSEEnabled = newValue, ..}
instance Property "SSEType" SSESpecificationProperty where
  type PropertyType "SSEType" SSESpecificationProperty = Value Prelude.Text
  set newValue SSESpecificationProperty {..}
    = SSESpecificationProperty {sSEType = Prelude.pure newValue, ..}