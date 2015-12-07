<?php

/* 
 * controllers/About.php
 * 
 * @author Becky Zhou
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class About extends Application {
    
    
    public function index()
    {
        $this->data['pagebody'] = 'about';    // this is the view we want shown
        $this->data['title'] = 'About Us'; //Title on the page
        $this->data['pageTitle'] = 'About Us';   // Page title
        
        $this->load->model('members');
        
        $members = $this->members->all();

        $member_list = array();
        
        //build an array of members
        foreach ($members as $m) {
            $member_list[] = array('id' => $m['id'], 'name' => $m['name'], 'image'=>$m['pic'] );
        }

        $this->data['member_list'] = $member_list;
        
        $this->render();
    }
    
}