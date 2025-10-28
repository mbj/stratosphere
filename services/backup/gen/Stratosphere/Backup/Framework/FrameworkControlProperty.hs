module Stratosphere.Backup.Framework.FrameworkControlProperty (
        module Exports, FrameworkControlProperty(..),
        mkFrameworkControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.Framework.ControlInputParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.Backup.Framework.ControlScopeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FrameworkControlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-framework-frameworkcontrol.html>
    FrameworkControlProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-framework-frameworkcontrol.html#cfn-backup-framework-frameworkcontrol-controlinputparameters>
                              controlInputParameters :: (Prelude.Maybe [ControlInputParameterProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-framework-frameworkcontrol.html#cfn-backup-framework-frameworkcontrol-controlname>
                              controlName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-framework-frameworkcontrol.html#cfn-backup-framework-frameworkcontrol-controlscope>
                              controlScope :: (Prelude.Maybe ControlScopeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFrameworkControlProperty ::
  Value Prelude.Text -> FrameworkControlProperty
mkFrameworkControlProperty controlName
  = FrameworkControlProperty
      {haddock_workaround_ = (), controlName = controlName,
       controlInputParameters = Prelude.Nothing,
       controlScope = Prelude.Nothing}
instance ToResourceProperties FrameworkControlProperty where
  toResourceProperties FrameworkControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::Framework.FrameworkControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ControlName" JSON..= controlName]
                           (Prelude.catMaybes
                              [(JSON..=) "ControlInputParameters"
                                 Prelude.<$> controlInputParameters,
                               (JSON..=) "ControlScope" Prelude.<$> controlScope]))}
instance JSON.ToJSON FrameworkControlProperty where
  toJSON FrameworkControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ControlName" JSON..= controlName]
              (Prelude.catMaybes
                 [(JSON..=) "ControlInputParameters"
                    Prelude.<$> controlInputParameters,
                  (JSON..=) "ControlScope" Prelude.<$> controlScope])))
instance Property "ControlInputParameters" FrameworkControlProperty where
  type PropertyType "ControlInputParameters" FrameworkControlProperty = [ControlInputParameterProperty]
  set newValue FrameworkControlProperty {..}
    = FrameworkControlProperty
        {controlInputParameters = Prelude.pure newValue, ..}
instance Property "ControlName" FrameworkControlProperty where
  type PropertyType "ControlName" FrameworkControlProperty = Value Prelude.Text
  set newValue FrameworkControlProperty {..}
    = FrameworkControlProperty {controlName = newValue, ..}
instance Property "ControlScope" FrameworkControlProperty where
  type PropertyType "ControlScope" FrameworkControlProperty = ControlScopeProperty
  set newValue FrameworkControlProperty {..}
    = FrameworkControlProperty
        {controlScope = Prelude.pure newValue, ..}