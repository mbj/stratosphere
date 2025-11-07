module Stratosphere.QuickSight.Dashboard.GlobalTableBorderOptionsProperty (
        module Exports, GlobalTableBorderOptionsProperty(..),
        mkGlobalTableBorderOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TableBorderOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TableSideBorderOptionsProperty as Exports
import Stratosphere.ResourceProperties
data GlobalTableBorderOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-globaltableborderoptions.html>
    GlobalTableBorderOptionsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-globaltableborderoptions.html#cfn-quicksight-dashboard-globaltableborderoptions-sidespecificborder>
                                      sideSpecificBorder :: (Prelude.Maybe TableSideBorderOptionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-globaltableborderoptions.html#cfn-quicksight-dashboard-globaltableborderoptions-uniformborder>
                                      uniformBorder :: (Prelude.Maybe TableBorderOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlobalTableBorderOptionsProperty ::
  GlobalTableBorderOptionsProperty
mkGlobalTableBorderOptionsProperty
  = GlobalTableBorderOptionsProperty
      {haddock_workaround_ = (), sideSpecificBorder = Prelude.Nothing,
       uniformBorder = Prelude.Nothing}
instance ToResourceProperties GlobalTableBorderOptionsProperty where
  toResourceProperties GlobalTableBorderOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GlobalTableBorderOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SideSpecificBorder" Prelude.<$> sideSpecificBorder,
                            (JSON..=) "UniformBorder" Prelude.<$> uniformBorder])}
instance JSON.ToJSON GlobalTableBorderOptionsProperty where
  toJSON GlobalTableBorderOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SideSpecificBorder" Prelude.<$> sideSpecificBorder,
               (JSON..=) "UniformBorder" Prelude.<$> uniformBorder]))
instance Property "SideSpecificBorder" GlobalTableBorderOptionsProperty where
  type PropertyType "SideSpecificBorder" GlobalTableBorderOptionsProperty = TableSideBorderOptionsProperty
  set newValue GlobalTableBorderOptionsProperty {..}
    = GlobalTableBorderOptionsProperty
        {sideSpecificBorder = Prelude.pure newValue, ..}
instance Property "UniformBorder" GlobalTableBorderOptionsProperty where
  type PropertyType "UniformBorder" GlobalTableBorderOptionsProperty = TableBorderOptionsProperty
  set newValue GlobalTableBorderOptionsProperty {..}
    = GlobalTableBorderOptionsProperty
        {uniformBorder = Prelude.pure newValue, ..}