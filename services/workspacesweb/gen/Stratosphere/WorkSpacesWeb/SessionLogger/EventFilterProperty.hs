module Stratosphere.WorkSpacesWeb.SessionLogger.EventFilterProperty (
        EventFilterProperty(..), mkEventFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-sessionlogger-eventfilter.html>
    EventFilterProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-sessionlogger-eventfilter.html#cfn-workspacesweb-sessionlogger-eventfilter-all>
                         all :: (Prelude.Maybe JSON.Object),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-sessionlogger-eventfilter.html#cfn-workspacesweb-sessionlogger-eventfilter-include>
                         include :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventFilterProperty :: EventFilterProperty
mkEventFilterProperty
  = EventFilterProperty
      {haddock_workaround_ = (), all = Prelude.Nothing,
       include = Prelude.Nothing}
instance ToResourceProperties EventFilterProperty where
  toResourceProperties EventFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::SessionLogger.EventFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "All" Prelude.<$> all,
                            (JSON..=) "Include" Prelude.<$> include])}
instance JSON.ToJSON EventFilterProperty where
  toJSON EventFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "All" Prelude.<$> all,
               (JSON..=) "Include" Prelude.<$> include]))
instance Property "All" EventFilterProperty where
  type PropertyType "All" EventFilterProperty = JSON.Object
  set newValue EventFilterProperty {..}
    = EventFilterProperty {all = Prelude.pure newValue, ..}
instance Property "Include" EventFilterProperty where
  type PropertyType "Include" EventFilterProperty = ValueList Prelude.Text
  set newValue EventFilterProperty {..}
    = EventFilterProperty {include = Prelude.pure newValue, ..}