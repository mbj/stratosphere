module Stratosphere.CodePipeline.Pipeline.BlockerDeclarationProperty (
        BlockerDeclarationProperty(..), mkBlockerDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BlockerDeclarationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-blockerdeclaration.html>
    BlockerDeclarationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-blockerdeclaration.html#cfn-codepipeline-pipeline-blockerdeclaration-name>
                                name :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-blockerdeclaration.html#cfn-codepipeline-pipeline-blockerdeclaration-type>
                                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBlockerDeclarationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> BlockerDeclarationProperty
mkBlockerDeclarationProperty name type'
  = BlockerDeclarationProperty
      {haddock_workaround_ = (), name = name, type' = type'}
instance ToResourceProperties BlockerDeclarationProperty where
  toResourceProperties BlockerDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.BlockerDeclaration",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Type" JSON..= type']}
instance JSON.ToJSON BlockerDeclarationProperty where
  toJSON BlockerDeclarationProperty {..}
    = JSON.object ["Name" JSON..= name, "Type" JSON..= type']
instance Property "Name" BlockerDeclarationProperty where
  type PropertyType "Name" BlockerDeclarationProperty = Value Prelude.Text
  set newValue BlockerDeclarationProperty {..}
    = BlockerDeclarationProperty {name = newValue, ..}
instance Property "Type" BlockerDeclarationProperty where
  type PropertyType "Type" BlockerDeclarationProperty = Value Prelude.Text
  set newValue BlockerDeclarationProperty {..}
    = BlockerDeclarationProperty {type' = newValue, ..}