module Stratosphere.Lex.Bot.GrammarSlotTypeSourceProperty (
        GrammarSlotTypeSourceProperty(..), mkGrammarSlotTypeSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GrammarSlotTypeSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-grammarslottypesource.html>
    GrammarSlotTypeSourceProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-grammarslottypesource.html#cfn-lex-bot-grammarslottypesource-kmskeyarn>
                                   kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-grammarslottypesource.html#cfn-lex-bot-grammarslottypesource-s3bucketname>
                                   s3BucketName :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-grammarslottypesource.html#cfn-lex-bot-grammarslottypesource-s3objectkey>
                                   s3ObjectKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrammarSlotTypeSourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> GrammarSlotTypeSourceProperty
mkGrammarSlotTypeSourceProperty s3BucketName s3ObjectKey
  = GrammarSlotTypeSourceProperty
      {haddock_workaround_ = (), s3BucketName = s3BucketName,
       s3ObjectKey = s3ObjectKey, kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties GrammarSlotTypeSourceProperty where
  toResourceProperties GrammarSlotTypeSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.GrammarSlotTypeSource",
         supportsTags = Prelude.False,
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