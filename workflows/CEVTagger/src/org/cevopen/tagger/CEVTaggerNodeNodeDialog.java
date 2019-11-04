package org.cevopen.tagger;

import org.knime.core.node.defaultnodesettings.DefaultNodeSettingsPane;
import org.knime.core.node.defaultnodesettings.DialogComponentString;
import org.knime.core.node.defaultnodesettings.SettingsModelString;

/**
 * This is an example implementation of the node dialog of the
 * "CEVTaggerNode" node.
 *
 * This node dialog derives from {@link DefaultNodeSettingsPane} which allows
 * creation of a simple dialog with standard components. If you need a more
 * complex dialog please derive directly from
 * {@link org.knime.core.node.NodeDialogPane}. In general, one can create an
 * arbitrary complex dialog using Java Swing.
 * 
 * @author Clyde Davies
 */
public class CEVTaggerNodeNodeDialog extends DefaultNodeSettingsPane {

	/**
	 * New dialog pane for configuring the node. The dialog created here
	 * will show up when double clicking on a node in KNIME Analytics Platform.
	 */
    protected CEVTaggerNodeNodeDialog() {
        super();
        
        /*
		 * The DefaultNodeSettingsPane provides methods to add simple standard
		 * components to the dialog pane via the addDialogComponent(...) method. This
		 * method expects a new DialogComponet object that should be added to the dialog
		 * pane. There are many already predefined components for the most commonly used
		 * configuration needs like a text box (DialogComponentString) to enter some
		 * String or a number spinner (DialogComponentNumber) to enter some number in a
		 * specific range and step size.
		 * 
		 * The dialog components are connected to the node model via settings model
		 * objects that can easily load and save their settings to the node settings.
		 * Depending on the type of input the dialog component should receive, the
		 * constructor of the component requires a suitable settings model object. E.g.
		 * the DialogComponentString requires a SettingsModelString. Additionally,
		 * dialog components sometimes allow to further configure the behavior of the
		 * component in the constructor. E.g. to disallow empty inputs (like below).
		 * Here, the loading/saving in the dialog is already taken care of by the
		 * DefaultNodeSettingsPane. It is important to use the same key for the settings
		 * model here as used in the node model implementation (it does not need to be
		 * the same object). One best practice is to use package private static methods
		 * to create the settings model as we did in the node model implementation (see
		 * createNumberFormatSettingsModel() in the NodeModel class).
		 * 
		 * Here we create a simple String DialogComponent that will display a label
		 * String besides a text box in which the use can enter a value. The
		 * DialogComponentString has additional options to disallow empty inputs, hence
		 * we do not need to worry about that in the model implementation anymore.
		 * 
		 */
		// First, create a new settings model using the create method from the node model.
		SettingsModelString stringSettings = CEVTaggerNodeNodeModel.createNumberFormatSettingsModel();
		// Add a new String component to the dialog.
		addDialogComponent(new DialogComponentString(stringSettings, "Number Format", true, 10));
    }
}

