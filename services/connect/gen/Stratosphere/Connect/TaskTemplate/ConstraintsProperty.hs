module Stratosphere.Connect.TaskTemplate.ConstraintsProperty (
        module Exports, ConstraintsProperty(..), mkConstraintsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.TaskTemplate.InvisibleFieldInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.TaskTemplate.ReadOnlyFieldInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.TaskTemplate.RequiredFieldInfoProperty as Exports
import Stratosphere.ResourceProperties
data ConstraintsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-tasktemplate-constraints.html>
    ConstraintsProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-tasktemplate-constraints.html#cfn-connect-tasktemplate-constraints-invisiblefields>
                         invisibleFields :: (Prelude.Maybe [InvisibleFieldInfoProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-tasktemplate-constraints.html#cfn-connect-tasktemplate-constraints-readonlyfields>
                         readOnlyFields :: (Prelude.Maybe [ReadOnlyFieldInfoProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-tasktemplate-constraints.html#cfn-connect-tasktemplate-constraints-requiredfields>
                         requiredFields :: (Prelude.Maybe [RequiredFieldInfoProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConstraintsProperty :: ConstraintsProperty
mkConstraintsProperty
  = ConstraintsProperty
      {haddock_workaround_ = (), invisibleFields = Prelude.Nothing,
       readOnlyFields = Prelude.Nothing, requiredFields = Prelude.Nothing}
instance ToResourceProperties ConstraintsProperty where
  toResourceProperties ConstraintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::TaskTemplate.Constraints",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InvisibleFields" Prelude.<$> invisibleFields,
                            (JSON..=) "ReadOnlyFields" Prelude.<$> readOnlyFields,
                            (JSON..=) "RequiredFields" Prelude.<$> requiredFields])}
instance JSON.ToJSON ConstraintsProperty where
  toJSON ConstraintsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InvisibleFields" Prelude.<$> invisibleFields,
               (JSON..=) "ReadOnlyFields" Prelude.<$> readOnlyFields,
               (JSON..=) "RequiredFields" Prelude.<$> requiredFields]))
instance Property "InvisibleFields" ConstraintsProperty where
  type PropertyType "InvisibleFields" ConstraintsProperty = [InvisibleFieldInfoProperty]
  set newValue ConstraintsProperty {..}
    = ConstraintsProperty {invisibleFields = Prelude.pure newValue, ..}
instance Property "ReadOnlyFields" ConstraintsProperty where
  type PropertyType "ReadOnlyFields" ConstraintsProperty = [ReadOnlyFieldInfoProperty]
  set newValue ConstraintsProperty {..}
    = ConstraintsProperty {readOnlyFields = Prelude.pure newValue, ..}
instance Property "RequiredFields" ConstraintsProperty where
  type PropertyType "RequiredFields" ConstraintsProperty = [RequiredFieldInfoProperty]
  set newValue ConstraintsProperty {..}
    = ConstraintsProperty {requiredFields = Prelude.pure newValue, ..}