module Stratosphere.Backup.Framework (
        module Exports, Framework(..), mkFramework
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.Framework.FrameworkControlProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Framework
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-framework.html>
    Framework {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-framework.html#cfn-backup-framework-frameworkcontrols>
               frameworkControls :: [FrameworkControlProperty],
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-framework.html#cfn-backup-framework-frameworkdescription>
               frameworkDescription :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-framework.html#cfn-backup-framework-frameworkname>
               frameworkName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-framework.html#cfn-backup-framework-frameworktags>
               frameworkTags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFramework :: [FrameworkControlProperty] -> Framework
mkFramework frameworkControls
  = Framework
      {haddock_workaround_ = (), frameworkControls = frameworkControls,
       frameworkDescription = Prelude.Nothing,
       frameworkName = Prelude.Nothing, frameworkTags = Prelude.Nothing}
instance ToResourceProperties Framework where
  toResourceProperties Framework {..}
    = ResourceProperties
        {awsType = "AWS::Backup::Framework", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FrameworkControls" JSON..= frameworkControls]
                           (Prelude.catMaybes
                              [(JSON..=) "FrameworkDescription" Prelude.<$> frameworkDescription,
                               (JSON..=) "FrameworkName" Prelude.<$> frameworkName,
                               (JSON..=) "FrameworkTags" Prelude.<$> frameworkTags]))}
instance JSON.ToJSON Framework where
  toJSON Framework {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FrameworkControls" JSON..= frameworkControls]
              (Prelude.catMaybes
                 [(JSON..=) "FrameworkDescription" Prelude.<$> frameworkDescription,
                  (JSON..=) "FrameworkName" Prelude.<$> frameworkName,
                  (JSON..=) "FrameworkTags" Prelude.<$> frameworkTags])))
instance Property "FrameworkControls" Framework where
  type PropertyType "FrameworkControls" Framework = [FrameworkControlProperty]
  set newValue Framework {..}
    = Framework {frameworkControls = newValue, ..}
instance Property "FrameworkDescription" Framework where
  type PropertyType "FrameworkDescription" Framework = Value Prelude.Text
  set newValue Framework {..}
    = Framework {frameworkDescription = Prelude.pure newValue, ..}
instance Property "FrameworkName" Framework where
  type PropertyType "FrameworkName" Framework = Value Prelude.Text
  set newValue Framework {..}
    = Framework {frameworkName = Prelude.pure newValue, ..}
instance Property "FrameworkTags" Framework where
  type PropertyType "FrameworkTags" Framework = [Tag]
  set newValue Framework {..}
    = Framework {frameworkTags = Prelude.pure newValue, ..}