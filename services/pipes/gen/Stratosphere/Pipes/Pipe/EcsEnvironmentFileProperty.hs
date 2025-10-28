module Stratosphere.Pipes.Pipe.EcsEnvironmentFileProperty (
        EcsEnvironmentFileProperty(..), mkEcsEnvironmentFileProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsEnvironmentFileProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecsenvironmentfile.html>
    EcsEnvironmentFileProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecsenvironmentfile.html#cfn-pipes-pipe-ecsenvironmentfile-type>
                                type' :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecsenvironmentfile.html#cfn-pipes-pipe-ecsenvironmentfile-value>
                                value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEcsEnvironmentFileProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EcsEnvironmentFileProperty
mkEcsEnvironmentFileProperty type' value
  = EcsEnvironmentFileProperty
      {haddock_workaround_ = (), type' = type', value = value}
instance ToResourceProperties EcsEnvironmentFileProperty where
  toResourceProperties EcsEnvironmentFileProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.EcsEnvironmentFile",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON EcsEnvironmentFileProperty where
  toJSON EcsEnvironmentFileProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" EcsEnvironmentFileProperty where
  type PropertyType "Type" EcsEnvironmentFileProperty = Value Prelude.Text
  set newValue EcsEnvironmentFileProperty {..}
    = EcsEnvironmentFileProperty {type' = newValue, ..}
instance Property "Value" EcsEnvironmentFileProperty where
  type PropertyType "Value" EcsEnvironmentFileProperty = Value Prelude.Text
  set newValue EcsEnvironmentFileProperty {..}
    = EcsEnvironmentFileProperty {value = newValue, ..}