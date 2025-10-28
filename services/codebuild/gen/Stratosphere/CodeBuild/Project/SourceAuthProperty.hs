module Stratosphere.CodeBuild.Project.SourceAuthProperty (
        SourceAuthProperty(..), mkSourceAuthProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceAuthProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html>
    SourceAuthProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html#cfn-codebuild-project-sourceauth-resource>
                        resource :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html#cfn-codebuild-project-sourceauth-type>
                        type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceAuthProperty :: Value Prelude.Text -> SourceAuthProperty
mkSourceAuthProperty type'
  = SourceAuthProperty
      {haddock_workaround_ = (), type' = type',
       resource = Prelude.Nothing}
instance ToResourceProperties SourceAuthProperty where
  toResourceProperties SourceAuthProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.SourceAuth",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Resource" Prelude.<$> resource]))}
instance JSON.ToJSON SourceAuthProperty where
  toJSON SourceAuthProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Resource" Prelude.<$> resource])))
instance Property "Resource" SourceAuthProperty where
  type PropertyType "Resource" SourceAuthProperty = Value Prelude.Text
  set newValue SourceAuthProperty {..}
    = SourceAuthProperty {resource = Prelude.pure newValue, ..}
instance Property "Type" SourceAuthProperty where
  type PropertyType "Type" SourceAuthProperty = Value Prelude.Text
  set newValue SourceAuthProperty {..}
    = SourceAuthProperty {type' = newValue, ..}