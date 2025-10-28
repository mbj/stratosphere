module Stratosphere.DynamoDB.GlobalTable.SSESpecificationProperty (
        SSESpecificationProperty(..), mkSSESpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SSESpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-ssespecification.html>
    SSESpecificationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-ssespecification.html#cfn-dynamodb-globaltable-ssespecification-sseenabled>
                              sSEEnabled :: (Value Prelude.Bool),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-ssespecification.html#cfn-dynamodb-globaltable-ssespecification-ssetype>
                              sSEType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSSESpecificationProperty ::
  Value Prelude.Bool -> SSESpecificationProperty
mkSSESpecificationProperty sSEEnabled
  = SSESpecificationProperty
      {haddock_workaround_ = (), sSEEnabled = sSEEnabled,
       sSEType = Prelude.Nothing}
instance ToResourceProperties SSESpecificationProperty where
  toResourceProperties SSESpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.SSESpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SSEEnabled" JSON..= sSEEnabled]
                           (Prelude.catMaybes [(JSON..=) "SSEType" Prelude.<$> sSEType]))}
instance JSON.ToJSON SSESpecificationProperty where
  toJSON SSESpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SSEEnabled" JSON..= sSEEnabled]
              (Prelude.catMaybes [(JSON..=) "SSEType" Prelude.<$> sSEType])))
instance Property "SSEEnabled" SSESpecificationProperty where
  type PropertyType "SSEEnabled" SSESpecificationProperty = Value Prelude.Bool
  set newValue SSESpecificationProperty {..}
    = SSESpecificationProperty {sSEEnabled = newValue, ..}
instance Property "SSEType" SSESpecificationProperty where
  type PropertyType "SSEType" SSESpecificationProperty = Value Prelude.Text
  set newValue SSESpecificationProperty {..}
    = SSESpecificationProperty {sSEType = Prelude.pure newValue, ..}