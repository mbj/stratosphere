module Stratosphere.SecurityLake.Subscriber.AwsLogSourceProperty (
        AwsLogSourceProperty(..), mkAwsLogSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AwsLogSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscriber-awslogsource.html>
    AwsLogSourceProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscriber-awslogsource.html#cfn-securitylake-subscriber-awslogsource-sourcename>
                          sourceName :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscriber-awslogsource.html#cfn-securitylake-subscriber-awslogsource-sourceversion>
                          sourceVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsLogSourceProperty :: AwsLogSourceProperty
mkAwsLogSourceProperty
  = AwsLogSourceProperty
      {haddock_workaround_ = (), sourceName = Prelude.Nothing,
       sourceVersion = Prelude.Nothing}
instance ToResourceProperties AwsLogSourceProperty where
  toResourceProperties AwsLogSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityLake::Subscriber.AwsLogSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourceName" Prelude.<$> sourceName,
                            (JSON..=) "SourceVersion" Prelude.<$> sourceVersion])}
instance JSON.ToJSON AwsLogSourceProperty where
  toJSON AwsLogSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourceName" Prelude.<$> sourceName,
               (JSON..=) "SourceVersion" Prelude.<$> sourceVersion]))
instance Property "SourceName" AwsLogSourceProperty where
  type PropertyType "SourceName" AwsLogSourceProperty = Value Prelude.Text
  set newValue AwsLogSourceProperty {..}
    = AwsLogSourceProperty {sourceName = Prelude.pure newValue, ..}
instance Property "SourceVersion" AwsLogSourceProperty where
  type PropertyType "SourceVersion" AwsLogSourceProperty = Value Prelude.Text
  set newValue AwsLogSourceProperty {..}
    = AwsLogSourceProperty {sourceVersion = Prelude.pure newValue, ..}