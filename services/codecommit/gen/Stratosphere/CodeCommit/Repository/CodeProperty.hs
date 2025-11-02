module Stratosphere.CodeCommit.Repository.CodeProperty (
        module Exports, CodeProperty(..), mkCodeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeCommit.Repository.S3Property as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-code.html>
    CodeProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-code.html#cfn-codecommit-repository-code-branchname>
                  branchName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-code.html#cfn-codecommit-repository-code-s3>
                  s3 :: S3Property}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeProperty :: S3Property -> CodeProperty
mkCodeProperty s3
  = CodeProperty
      {haddock_workaround_ = (), s3 = s3, branchName = Prelude.Nothing}
instance ToResourceProperties CodeProperty where
  toResourceProperties CodeProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeCommit::Repository.Code",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3" JSON..= s3]
                           (Prelude.catMaybes
                              [(JSON..=) "BranchName" Prelude.<$> branchName]))}
instance JSON.ToJSON CodeProperty where
  toJSON CodeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3" JSON..= s3]
              (Prelude.catMaybes
                 [(JSON..=) "BranchName" Prelude.<$> branchName])))
instance Property "BranchName" CodeProperty where
  type PropertyType "BranchName" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {branchName = Prelude.pure newValue, ..}
instance Property "S3" CodeProperty where
  type PropertyType "S3" CodeProperty = S3Property
  set newValue CodeProperty {..} = CodeProperty {s3 = newValue, ..}