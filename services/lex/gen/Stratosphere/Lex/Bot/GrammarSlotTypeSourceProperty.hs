module Stratosphere.Lex.Bot.GrammarSlotTypeSourceProperty (
        GrammarSlotTypeSourceProperty(..), mkGrammarSlotTypeSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GrammarSlotTypeSourceProperty
  = GrammarSlotTypeSourceProperty {kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                   s3BucketName :: (Value Prelude.Text),
                                   s3ObjectKey :: (Value Prelude.Text)}
mkGrammarSlotTypeSourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> GrammarSlotTypeSourceProperty
mkGrammarSlotTypeSourceProperty s3BucketName s3ObjectKey
  = GrammarSlotTypeSourceProperty
      {s3BucketName = s3BucketName, s3ObjectKey = s3ObjectKey,
       kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties GrammarSlotTypeSourceProperty where
  toResourceProperties GrammarSlotTypeSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.GrammarSlotTypeSource",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3BucketName" JSON..= s3BucketName,
                            "S3ObjectKey" JSON..= s3ObjectKey]
                           (Prelude.catMaybes [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))}
instance JSON.ToJSON GrammarSlotTypeSourceProperty where
  toJSON GrammarSlotTypeSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3BucketName" JSON..= s3BucketName,
               "S3ObjectKey" JSON..= s3ObjectKey]
              (Prelude.catMaybes [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])))
instance Property "KmsKeyArn" GrammarSlotTypeSourceProperty where
  type PropertyType "KmsKeyArn" GrammarSlotTypeSourceProperty = Value Prelude.Text
  set newValue GrammarSlotTypeSourceProperty {..}
    = GrammarSlotTypeSourceProperty
        {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "S3BucketName" GrammarSlotTypeSourceProperty where
  type PropertyType "S3BucketName" GrammarSlotTypeSourceProperty = Value Prelude.Text
  set newValue GrammarSlotTypeSourceProperty {..}
    = GrammarSlotTypeSourceProperty {s3BucketName = newValue, ..}
instance Property "S3ObjectKey" GrammarSlotTypeSourceProperty where
  type PropertyType "S3ObjectKey" GrammarSlotTypeSourceProperty = Value Prelude.Text
  set newValue GrammarSlotTypeSourceProperty {..}
    = GrammarSlotTypeSourceProperty {s3ObjectKey = newValue, ..}