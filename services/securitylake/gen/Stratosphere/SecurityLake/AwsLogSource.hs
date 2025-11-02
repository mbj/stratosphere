module Stratosphere.SecurityLake.AwsLogSource (
        AwsLogSource(..), mkAwsLogSource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AwsLogSource
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securitylake-awslogsource.html>
    AwsLogSource {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securitylake-awslogsource.html#cfn-securitylake-awslogsource-accounts>
                  accounts :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securitylake-awslogsource.html#cfn-securitylake-awslogsource-datalakearn>
                  dataLakeArn :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securitylake-awslogsource.html#cfn-securitylake-awslogsource-sourcename>
                  sourceName :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securitylake-awslogsource.html#cfn-securitylake-awslogsource-sourceversion>
                  sourceVersion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsLogSource ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> AwsLogSource
mkAwsLogSource dataLakeArn sourceName sourceVersion
  = AwsLogSource
      {haddock_workaround_ = (), dataLakeArn = dataLakeArn,
       sourceName = sourceName, sourceVersion = sourceVersion,
       accounts = Prelude.Nothing}
instance ToResourceProperties AwsLogSource where
  toResourceProperties AwsLogSource {..}
    = ResourceProperties
        {awsType = "AWS::SecurityLake::AwsLogSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataLakeArn" JSON..= dataLakeArn,
                            "SourceName" JSON..= sourceName,
                            "SourceVersion" JSON..= sourceVersion]
                           (Prelude.catMaybes [(JSON..=) "Accounts" Prelude.<$> accounts]))}
instance JSON.ToJSON AwsLogSource where
  toJSON AwsLogSource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataLakeArn" JSON..= dataLakeArn,
               "SourceName" JSON..= sourceName,
               "SourceVersion" JSON..= sourceVersion]
              (Prelude.catMaybes [(JSON..=) "Accounts" Prelude.<$> accounts])))
instance Property "Accounts" AwsLogSource where
  type PropertyType "Accounts" AwsLogSource = ValueList Prelude.Text
  set newValue AwsLogSource {..}
    = AwsLogSource {accounts = Prelude.pure newValue, ..}
instance Property "DataLakeArn" AwsLogSource where
  type PropertyType "DataLakeArn" AwsLogSource = Value Prelude.Text
  set newValue AwsLogSource {..}
    = AwsLogSource {dataLakeArn = newValue, ..}
instance Property "SourceName" AwsLogSource where
  type PropertyType "SourceName" AwsLogSource = Value Prelude.Text
  set newValue AwsLogSource {..}
    = AwsLogSource {sourceName = newValue, ..}
instance Property "SourceVersion" AwsLogSource where
  type PropertyType "SourceVersion" AwsLogSource = Value Prelude.Text
  set newValue AwsLogSource {..}
    = AwsLogSource {sourceVersion = newValue, ..}