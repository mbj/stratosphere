module Stratosphere.Transfer.Agreement.CustomDirectoriesProperty (
        CustomDirectoriesProperty(..), mkCustomDirectoriesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomDirectoriesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-agreement-customdirectories.html>
    CustomDirectoriesProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-agreement-customdirectories.html#cfn-transfer-agreement-customdirectories-failedfilesdirectory>
                               failedFilesDirectory :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-agreement-customdirectories.html#cfn-transfer-agreement-customdirectories-mdnfilesdirectory>
                               mdnFilesDirectory :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-agreement-customdirectories.html#cfn-transfer-agreement-customdirectories-payloadfilesdirectory>
                               payloadFilesDirectory :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-agreement-customdirectories.html#cfn-transfer-agreement-customdirectories-statusfilesdirectory>
                               statusFilesDirectory :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-agreement-customdirectories.html#cfn-transfer-agreement-customdirectories-temporaryfilesdirectory>
                               temporaryFilesDirectory :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomDirectoriesProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> CustomDirectoriesProperty
mkCustomDirectoriesProperty
  failedFilesDirectory
  mdnFilesDirectory
  payloadFilesDirectory
  statusFilesDirectory
  temporaryFilesDirectory
  = CustomDirectoriesProperty
      {haddock_workaround_ = (),
       failedFilesDirectory = failedFilesDirectory,
       mdnFilesDirectory = mdnFilesDirectory,
       payloadFilesDirectory = payloadFilesDirectory,
       statusFilesDirectory = statusFilesDirectory,
       temporaryFilesDirectory = temporaryFilesDirectory}
instance ToResourceProperties CustomDirectoriesProperty where
  toResourceProperties CustomDirectoriesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Agreement.CustomDirectories",
         supportsTags = Prelude.False,
         properties = ["FailedFilesDirectory" JSON..= failedFilesDirectory,
                       "MdnFilesDirectory" JSON..= mdnFilesDirectory,
                       "PayloadFilesDirectory" JSON..= payloadFilesDirectory,
                       "StatusFilesDirectory" JSON..= statusFilesDirectory,
                       "TemporaryFilesDirectory" JSON..= temporaryFilesDirectory]}
instance JSON.ToJSON CustomDirectoriesProperty where
  toJSON CustomDirectoriesProperty {..}
    = JSON.object
        ["FailedFilesDirectory" JSON..= failedFilesDirectory,
         "MdnFilesDirectory" JSON..= mdnFilesDirectory,
         "PayloadFilesDirectory" JSON..= payloadFilesDirectory,
         "StatusFilesDirectory" JSON..= statusFilesDirectory,
         "TemporaryFilesDirectory" JSON..= temporaryFilesDirectory]
instance Property "FailedFilesDirectory" CustomDirectoriesProperty where
  type PropertyType "FailedFilesDirectory" CustomDirectoriesProperty = Value Prelude.Text
  set newValue CustomDirectoriesProperty {..}
    = CustomDirectoriesProperty {failedFilesDirectory = newValue, ..}
instance Property "MdnFilesDirectory" CustomDirectoriesProperty where
  type PropertyType "MdnFilesDirectory" CustomDirectoriesProperty = Value Prelude.Text
  set newValue CustomDirectoriesProperty {..}
    = CustomDirectoriesProperty {mdnFilesDirectory = newValue, ..}
instance Property "PayloadFilesDirectory" CustomDirectoriesProperty where
  type PropertyType "PayloadFilesDirectory" CustomDirectoriesProperty = Value Prelude.Text
  set newValue CustomDirectoriesProperty {..}
    = CustomDirectoriesProperty {payloadFilesDirectory = newValue, ..}
instance Property "StatusFilesDirectory" CustomDirectoriesProperty where
  type PropertyType "StatusFilesDirectory" CustomDirectoriesProperty = Value Prelude.Text
  set newValue CustomDirectoriesProperty {..}
    = CustomDirectoriesProperty {statusFilesDirectory = newValue, ..}
instance Property "TemporaryFilesDirectory" CustomDirectoriesProperty where
  type PropertyType "TemporaryFilesDirectory" CustomDirectoriesProperty = Value Prelude.Text
  set newValue CustomDirectoriesProperty {..}
    = CustomDirectoriesProperty
        {temporaryFilesDirectory = newValue, ..}