module Stratosphere.Greengrass.FunctionDefinitionVersion.RunAsProperty (
        RunAsProperty(..), mkRunAsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RunAsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html>
    RunAsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html#cfn-greengrass-functiondefinitionversion-runas-gid>
                   gid :: (Prelude.Maybe (Value Prelude.Integer)),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html#cfn-greengrass-functiondefinitionversion-runas-uid>
                   uid :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRunAsProperty :: RunAsProperty
mkRunAsProperty
  = RunAsProperty {gid = Prelude.Nothing, uid = Prelude.Nothing}
instance ToResourceProperties RunAsProperty where
  toResourceProperties RunAsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::FunctionDefinitionVersion.RunAs",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Gid" Prelude.<$> gid,
                            (JSON..=) "Uid" Prelude.<$> uid])}
instance JSON.ToJSON RunAsProperty where
  toJSON RunAsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Gid" Prelude.<$> gid,
               (JSON..=) "Uid" Prelude.<$> uid]))
instance Property "Gid" RunAsProperty where
  type PropertyType "Gid" RunAsProperty = Value Prelude.Integer
  set newValue RunAsProperty {..}
    = RunAsProperty {gid = Prelude.pure newValue, ..}
instance Property "Uid" RunAsProperty where
  type PropertyType "Uid" RunAsProperty = Value Prelude.Integer
  set newValue RunAsProperty {..}
    = RunAsProperty {uid = Prelude.pure newValue, ..}